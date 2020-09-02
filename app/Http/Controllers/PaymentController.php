<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\SendPushNotification;

use Stripe\Charge;
use Stripe\Stripe;
use Stripe\StripeInvalidRequestError;

use Auth;
use Setting;
use Exception;

use App\Card;
use App\User;
use App\UserRequests;
use App\UserRequestPayment;


use Mail;
class PaymentController extends Controller
{
       /**
     * payment for user.
     *
     * @return \Illuminate\Http\Response
     */
    public function payment(Request $request)
    {
        $this->validate($request, [
                'request_id' => 'required|exists:user_request_payments,request_id|exists:user_requests,id,paid,0,user_id,'.Auth::user()->id
            ]);


        $UserRequest = UserRequests::find($request->request_id);

        if($UserRequest->payment_mode == 'CARD') {

            $RequestPayment = UserRequestPayment::where('request_id',$request->request_id)->first(); 

            $StripeCharge = $RequestPayment->total * 100;

            try {

                $Card = Card::where('user_id',Auth::user()->id)->where('is_default',1)->first();
                
                Stripe::setApiKey(Setting::get('stripe_secret_key'));
                $Balance = \Stripe\Balance::retrieve();
                var_dump($Balance);exit;

                
                $total_amount = $StripeCharge;
                $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
                  $length = 10;
                  $charactersLength = strlen($characters);
                  $randomString = '';
                  for ($i = 0; $i < $length; $i++) {
                      $randomString .= $characters[rand(0, $charactersLength - 1)];
                  }
                $group_id = $randomString;


                //Company

                $Charge = Charge::create(array(
                      "amount" => $StripeCharge,
                      "currency" => "usd",
                      "customer" => Auth::user()->stripe_cust_id,
                      "card" => $Card->card_id,
                      "transfer_group" => $group_id,
                      "description" => "Payment Charge for ".Auth::user()->email,
                      "receipt_email" => Auth::user()->email
                    ));

                  
                  //Provider
                  // $driver_stripe_id = "acct_1FjspyFroL1d1l6Z";
                  $driver_stripe_id = Setting::get('stripe_provider_id');
                  $driver_stripe_id = "acct_1FjziFF8Q7M9tWyS";

                  $Charge1 = \Stripe\Transfer::create([
                    'amount' => floor($total_amount*Setting::get('provider_percentage')),
                    'currency' => 'usd',
                    'destination' => $driver_stripe_id
                  ]);

                  // //escrow
                  // $escrow_stripe_id = Setting::get('stripe_escrow_id');
                  // $Charge2 = \Stripe\Transfer::create([
                  //    'amount' => floor($total_amount * Setting::get('escrow_percentage')),
                  //    'currency' => 'usd',
                  //    'destination' => $escrow_stripe_id,
                  //    'transfer_group' => $group_id,
                  // ]);

                  // //Shareholders
                  // $shareholders_stripe_id = Setting::get('stripe_shareholders_id');
                  // $Charge3 = \Stripe\Transfer::create([
                  //    'amount' => floor($total_amount * Setting::get('fleet_owner_percentage')),
                  //    'currency' => 'usd',
                  //    'destination' => $shareholders_stripe_id,
                  //    'transfer_group' => $group_id,
                  // ]);

                  // //INS
                  // $ins_stripe_id = Setting::get('stripe_ins_id');
                  // $Charge4 = \Stripe\Transfer::create([
                  //    'amount' => floor($total_amount * Setting::get('ins_percentage')),
                  //    'currency' => 'usd',
                  //    'destination' => $ins_stripe_id,
                  //    'transfer_group' => $group_id,
                  // ]);

                  // //Other
                  // $other_stripe_id = Setting::get('stripe_partners_id');
                  // $Charge5 = \Stripe\Transfer::create([
                  //    'amount' => floor($total_amount * Setting::get('partners_percentage')),
                  //    'currency' => 'usd',
                  //    'destination' => $other_stripe_id,
                  //    'transfer_group' => $group_id,
                  // ]);
        

                $RequestPayment->payment_id = $Charge["id"];
                $RequestPayment->payment_mode = 'CARD';
                $RequestPayment->fleet_owner = getFleetOwnerAmount($StripeCharge);
                $RequestPayment->company = getCompanyAmount($StripeCharge);;
                $RequestPayment->partners = getPartnersAmount($StripeCharge);
                $RequestPayment->provider = getProviderAmount($StripeCharge);
                $RequestPayment->escrow = getEscrowAmount($StripeCharge);
                $RequestPayment->save();

                // Driver
                // $Charge = Charge::create(array(
                      
                //     ));

                $UserRequest->paid = 1;
                $UserRequest->status = 'COMPLETED';
                $UserRequest->save();

                if($request->ajax()) {
					
					$MESSAGE= 'Your Amount '.$StripeCharge.' USD with the customer id:'.Auth::user()->stripe_cust_id.' By Card Id:'.$Card->card_id.' has been detucted';
					
					Mail::send('emails.invoice_email', array('name' => env('MAIL_FROM_NAME') ,'messagecontact' => $MESSAGE), function($message)
                    {
                        $message->from(env('MAIL_FROM_ADDRESS'), env('MAIL_FROM_NAME'));
                        
                        $message->to('abdullahsyedhussain19@gmail.com', 'Rider')->subject('E-Invoice'); //Auth::user()->email
                    });
					
					
                   return response()->json(['message' => trans('api.paid')]); 
                } else {
                    return redirect('dashboard')->with('flash_success','Paid');
                }

            } catch(StripeInvalidRequestError $e){
                if($request->ajax()){
                    return response()->json(['error' => $e->getMessage()], 500);
                } else {
                    return back()->with('flash_error', $e->getMessage());
                }
            } catch(Exception $e) {
                if($request->ajax()){
                    return response()->json(['error' => $e->getMessage()], 500);
                } else {
                    return back()->with('flash_error', $e->getMessage());
                }
            }
        }
    }


    /**
     * add wallet money for user.
     *
     * @return \Illuminate\Http\Response
     */
    public function add_money(Request $request){

        $this->validate($request, [
                'amount' => 'required|integer',
                'card_id' => 'required|exists:cards,card_id,user_id,'.Auth::user()->id
            ]);

        try{
            
            $StripeWalletCharge = $request->amount * 100;

            Stripe::setApiKey(Setting::get('stripe_secret_key'));
            // $Balance = \Stripe\Balance::retrieve();
            // var_dump($Balance);exit;


            $Charge = Charge::create(array(
                  "amount" => $StripeWalletCharge,
                  "currency" => "usd",
                  "customer" => Auth::user()->stripe_cust_id,
                  "card" => $request->card_id,
                  "description" => "Adding Money for ".Auth::user()->email,
                  "receipt_email" => Auth::user()->email
                ));

            $update_user = User::find(Auth::user()->id);
            $update_user->wallet_balance += $request->amount;
            $update_user->save();

            Card::where('user_id',Auth::user()->id)->update(['is_default' => 0]);
            Card::where('card_id',$request->card_id)->update(['is_default' => 1]);

            //sending push on adding wallet money
            (new SendPushNotification)->WalletMoney(Auth::user()->id,currency($request->amount));

            if($request->ajax()){
                return response()->json(['message' => currency($request->amount).trans('api.added_to_your_wallet'), 'user' => $update_user]); 
            } else {
                return redirect('wallet')->with('flash_success',currency($request->amount).' added to your wallet');
            }

        } catch(StripeInvalidRequestError $e) {
            if($request->ajax()){
                 return response()->json(['error' => $e->getMessage()], 500);
            }else{
                return back()->with('flash_error',$e->getMessage());
            }
        } catch(Exception $e) {
            if($request->ajax()) {
                return response()->json(['error' => $e->getMessage()], 500);
            } else {
                return back()->with('flash_error', $e->getMessage());
            }
        }
    }
}

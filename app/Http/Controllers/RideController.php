<?php

namespace App\Http\Controllers;

use App\ServiceType;
use Illuminate\Http\Request;
use App\User;
use Auth;

class RideController extends Controller
{
    protected $UserAPI;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(UserApiController $UserAPI)
    {
        $this->middleware('auth')->except(['fare_estimate', 'fare_estimate_page']);
        $this->UserAPI = $UserAPI;
    }


    /**
     * Ride Confirmation.
     *
     * @return \Illuminate\Http\Response
     */
    public function confirm_ride(Request $request)
    {
        $fare = $this->UserAPI->estimated_fare($request)->getData();
        $service = (new Resource\ServiceResource)->show($request->service_type);
        $cards = (new Resource\CardResource)->index();

        if($request->has('current_longitude') && $request->has('current_latitude'))
        {
            User::where('id',Auth::user()->id)->update([
                'latitude' => $request->current_latitude,
                'longitude' => $request->current_longitude
            ]);
        }

        return view('user.ride.confirm_ride',compact('request','fare','service','cards'));
    }

    public function fare_estimate(Request $request)
    {
        $fare = $this->UserAPI->estimated_fare($request)->getData();
        $service = (new Resource\ServiceResource)->show($request->service_type);

        return \GuzzleHttp\json_encode(['fare' => $fare, 'service' => $service]);
    }

    public function fare_estimate_page()
    {
        return view('user.fare-estimator');
    }

    /**
     * Create Ride.
     *
     * @return \Illuminate\Http\Response
     */
    public function create_ride(Request $request)
    {
        return $this->UserAPI->send_request($request);
    }

    /**
     * Get Request Status Ride.
     *
     * @return \Illuminate\Http\Response
     */
    public function status()
    {
        return $this->UserAPI->request_status_check();
    }

    /**
     * Cancel Ride.
     *
     * @return \Illuminate\Http\Response
     */
    public function cancel_ride(Request $request)
    {
        return $this->UserAPI->cancel_request($request);
    }

    /**
     * Rate Ride.
     *
     * @return \Illuminate\Http\Response
     */
    public function rate(Request $request)
    {
        return $this->UserAPI->rate_provider($request);
    }

    public function ride(Request $request)
    {
        return view('ride');
    }
}

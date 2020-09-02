<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="utf-8">
    </head>
    <body>
        <div style="padding:0;margin:0">
            <table width="100%" cellpadding="20" cellspacing="0">
                <tbody>
                    <tr>
                        <td bgcolor="#ffffff" height="50px" align="left"><img src="{{url('/public/email/taxicab.png')}}" width="120" alt="Logo" class="CToWUd"></td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" align="center" cellpadding="10" cellspacing="0" style="background-color:#f0f7ed;font-family:&quot;Helvetica&quot;,&quot;Arial&quot;,sans-serif">
                                <tbody>
                                    <tr>
                                        <td align="center" style="font-size:17.5px;letter-spacing:0.5px;line-height:1.2;color:#7b6e71">
                                            <span>
                                                Hi <span class="">{{$UserRequest->user->first_name}},</span>
                                                <p style="display:inline">here's your receipt for
                                                    your ride on 
                                                </p>
                                                <p style="display:inline">{{$UserRequest->created_at}}</p>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr style="background-color:#66be67;font-size:24px;color:#ffffff" align="center">
                                        <td style="word-break:break-word"><strong>{{$UserRequestPayment->total}} USD</strong></td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="padding:0"><img src="https://ci3.googleusercontent.com/proxy/EoWZ9u6vhYeJShjG4sJ5bUM1TsZ2Cbkd-pLFtt0Shnlazi40kqmtBtMHi-jyHFwpxSW0uBUbU2p1AJaRgseypYtNAhOXek4FuCaciTwrgdM2uqpDmIlNB0o=s0-d-e1-ft#https://s3-eu-west-1.amazonaws.com/trip-reciept/receipt-banner1.png" style="padding:12px" class="CToWUd"></td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="font-size:19px;word-spacing:-2px;color:#494a4c;padding:5px 0 5px 0">
                                            <p style="margin:0">Your Driver was</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="color:#66be67;font-size:18px;padding:0px 0 15px 0">{{$UserRequest->provider->first_name}}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" align="center" cellpadding="20" cellspacing="0" style="background-color:#ffffff;margin-bottom:10px;font-family:&quot;Helvetica&quot;,&quot;Arial&quot;,sans-serif">
                                <tbody>
                                    <tr>
                                        <td align="center" style="background-color:#66be67;padding:14px 0">
                                            <strong style="font-size:21px;color:#ffffff;letter-spacing:0.7px">FARE</strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="color:#868a8b;border-bottom:2px solid #ccd">
                                <tbody>
                                    <tr>
                                        <td style="text-align:left;font-size:14px;padding-bottom:0"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="padding:0 10px 10px 10px;color:#868a8b;font-family:&quot;Helvetica&quot;,&quot;Arial&quot;,sans-serif">
                                <tbody>
                                    <tr>
                                        <td style="text-align:left;font-size:14px;padding-bottom:0">Amount charged<br></td>
                                        <td style="text-align:right;font-size:14px;padding-bottom:0;font-size:20px;color:#28bb4e;font-weight:bold;word-break:break-word">USD {{$UserRequestPayment->total}}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:left;font-size:14px;padding-bottom:0">Cash</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" align="center" cellpadding="10" cellspacing="0" style="background-color:#ffffff;margin-top:10px;font-family:&quot;Helvetica&quot;,&quot;Arial&quot;,sans-serif">
                                <tbody>
                                    <tr>
                                        <td align="center" style="background-color:#66be67;padding:14px 0;width:100%">
                                            <strong style="font-size:21px;color:#ffffff;letter-spacing:0.7px">YOUR RIDE</strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="50%" border="0" cellspacing="0" cellpadding="15" style="float:left;font-family:&quot;Helvetica&quot;,&quot;Arial&quot;,sans-serif">
                                <tbody>
                                    <tr>
                                        <td><img src="https://ci3.googleusercontent.com/proxy/0Htxa-kfIKKRQ7YW_6uvzYp1lEim8T90_a2_ILhIJzKZuVT2hmjtyQIoZWbatpqT4HR7glFloG8Mn7MNZ5vq6MsuLkKEwkzQA4DlVyVYMP8CJBmz=s0-d-e1-ft#https://s3-eu-west-1.amazonaws.com/trip-reciept/pickup-new.png" style="float:left" width="35" class="CToWUd">
                                            <strong style="float:left;margin-top:10px;margin-left:15px;font-size:20px;color:#454648">Pick up</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-top:0;padding-bottom:0"><strong style="float:left;font-size:13.5px;color:#454648">{{$UserRequest->created_at}}</strong></td>
                                    </tr>
                                    <tr style="width:50%">
                                        <td style="font-size:14px;color:#868a8b;padding-top:0">{{$UserRequest->s_address}}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="50%" border="0" cellspacing="0" cellpadding="15" style="float:right;font-family:&quot;Helvetica&quot;,&quot;Arial&quot;,sans-serif">
                                <tbody>
                                    <tr>
                                        <td><img src="https://ci3.googleusercontent.com/proxy/C8fZFSqL3PWOyN2R6VivMVTmGY4YsCtDqsAwecMNSq8bbEZO64cV5Mriit63FpxWPd1_UjQj5fg09lOQOT4fGkZoCvjZ7BHg44XBXlmONjrG9Q=s0-d-e1-ft#https://s3-eu-west-1.amazonaws.com/trip-reciept/drop-new.png" style="float:right" width="35" class="CToWUd">
                                            <strong style="float:right;margin-top:10px;margin-right:15px;font-size:20px;color:#454648">Drop off</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size:14px;color:#868a8b;padding-top:0;text-align:right">{{$UserRequest->d_address}}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="color:#868a8b;border-bottom:2px solid #ccd;margin-bottom:20px">
                                <tbody>
                                    <tr>
                                        <td style="text-align:left;font-size:14px;padding-bottom:0"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="padding:0 10px 0 10px;color:#868a8b;font-family:&quot;Helvetica&quot;,&quot;Arial&quot;,sans-serif">
                                <tbody>
                                    <tr>
                                        <td style="text-align:left;font-size:14px;padding-bottom:0;color:#868a8b;padding-left:4px">Trip distance</td>
                                        <td style="text-align:right;font-size:14px;padding-bottom:0;color:#868a8b;padding-right:5px">{{$UserRequest->distance}} KM</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:left;font-size:14px;padding-bottom:0;color:#868a8b;padding-left:4px">Booking reference</td>
                                        <td style="text-align:right;font-size:14px;padding-bottom:0;color:#868a8b;padding-right:5px">{{$UserRequest->booking_id}}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="yj6qo"></div>
            <div class="adL">
            </div>
        </div>
    </body>
</html>
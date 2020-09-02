@extends('user.layout.app')



@section('content')

<div class="banner banner-custom row no-margin" style="background-image: url('{{ asset('asset/img/banner-bg-1.jpg') }}');">

    <div class="banner-overlay"></div>

    <div class="container">

    </div>

</div>



<div class="row white-section no-margin">

    <div class="container">

        <div class="col-md-6 img-block text-center"> 

            <img src="{{ asset('asset/img/tap-1.jpg') }}">

        </div>

        <div class="col-md-6 content-block">

            <h2>Tap the app, get a ride</h2>

            <div class="title-divider"></div>

            <p>{{ Setting::get('site_title', 'Tranxit')  }} is the smartest way to get around. One tap and a car comes directly to you. Your driver knows exactly where to go. And you can pay with either cash or card.</p>

        </div>

    </div>

</div>



<div class="row gray-section no-margin">

    <div class="container">                

        <div class="col-md-6 content-block">

            <h2>Ride anywhere, anytime</h2>

            <div class="title-divider"></div>

            <p>Daily commute. Errand across town. Early morning flight. Late night drinks. Wherever you’re headed, count on {{ Setting::get('site_title', 'Tranxit') }} for a ride—no reservations needed.</p>

        </div>

        <div class="col-md-6 img-block text-center"> 

{{--            <img src="{{ asset('asset/img/anywhere.png') }}">--}}
            <div class="banner-form">

                <div class="row no-margin fields">

                    <div class="left">

                        <img  src="{{ asset('asset/img/2.png') }}">

                    </div>

                    <div class="right">

                        <a href="{{url('login')}}">

                            <h3 style ="color: #FB0505">Sign IN to Ride</h3>

                            <h5 style ="color: #FB0505">SIGN IN <!--<i  style ="color: #FB0505" class="fa fa-chevron-right"></i>--></h5>

                        </a>

                    </div>

                </div>

                <div class="row no-margin fields">

                    <div class="left">

                        <img style="margin-left:10px;"  src="{{ asset('asset/img/1.png') }}">

                    </div>

                    <div class="right">

                        <a href="{{ url('/provider/register') }}">

                            <h3 style ="color:#2471A3 ">Sign up to Drive</h3>

                            <h5 style ="color:#2471A3 ">SIGN UP <!--<i  class="fa fa-chevron-right "></i> --></h5>

                        </a>

                    </div>

                </div>

                <p class="note-or">Or <a href="{{ url('/provider/login') }}">sign in</a> with your rider account.</p>

            </div>

        </div>

    </div>

</div>



<div class="row white-section no-margin">

    <div class="container">

        <div class="col-md-6 img-block text-center"> 

            <img src="{{ asset('asset/img/low-cost.png') }}">

        </div>

        <div class="col-md-6 content-block">

            <h2>Low-cost to luxury</h2>

            <div class="title-divider"></div>

            <p>You can always request everyday cars at everyday prices. But sometimes you need a bit more space. Or you want to go big on style. With {{ Setting::get('site_title', 'Tranxit') }}, the choice is yours.</p>

        </div>

    </div>

</div>



<div class="row gray-section no-margin full-section">

    <div class="container">                

        <div class="col-md-6 content-block">

            <h3>Behind the Wheel</h3>

            <h2>They’re people like you, going your way</h2>

            <div class="title-divider"></div>

            <p>What makes the A-Team Taxi experience truly great are the people behind the wheel. They are mothers and fathers. Students and teachers. Veterans. Neighbors. Friends. Our partners drive their own cars—on their own schedule—in cities big and small. Which is why more than one million people worldwide have signed up to drive.</p>

        </div>


<div class="col-md-6">
    
    <iframe class="col-md-12" height="370" src="https://www.youtube.com/embed/qZnCDNgFIJg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    
</div>
       <!-- <div class="col-md-6 full-img text-center" style="background-image: url({{ asset('asset/img/behind-the-wheel.jpg') }}); "> 

             <img src="img/anywhere.png"> 

        </div>-->

    </div>

</div>



<div class="row white-section no-margin">

    <div class="container">

        <div class="col-md-6 img-block text-center"> 

            <img src="{{ asset('asset/img/low-cost.png') }}">

        </div>

        <div class="col-md-6 content-block">

            <h2>Helping Cities For the good of all</h2>

            <div class="title-divider"></div>

            <p>A city with {{ Setting::get('site_title', 'Tranxit') }} has more economic opportunities for residents, fewer drunk drivers on the streets, and better access to transportation for those without it.</p>

       </div>

    </div>

</div>



<div class="row gray-section no-margin">

    <div class="container">

      
            
 <iframe class="col-md-12 col-sm-12 col-xs-12 col-lg-12" height="370" src="https://www.youtube.com/embed/qZnCDNgFIJg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
      <!--  content-block     <h2>Safety Putting people first</h2>

            <div class="title-divider"></div>

            <p>Whether riding in the backseat or driving up front, every part of the {{ Setting::get('site_title', 'Tranxit') }} experience has been designed around your safety and security.</p>

       </div>

        <div class="col-md-6 img-block text-center"> 
        
    <iframe class="col-md-12" height="370" src="https://www.youtube.com/embed/qZnCDNgFIJg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
            <img src="{{ asset('asset/img/seat-belt.jpg') }}">
-->
       

    </div>

</div>

<style>
     #same_color{
         color:#FB0505;
         margin-bottom:14px;
     }
     #calculate_div{
         background-color:red;
         margin-bottom:20px;
         margin-top:19px;
         padding:0.5em;
         width:100%;
     }
 </style>
    <div class="row gray-section no-margin" id="ride-estimator">
        <div class="container">


            <!-- ride calculator -->

            <div class="row">
                <div class="col-sm-1 col-xs-1"></div>
                <div class="col-lg-12 col-md-12 col-sm-10 col-xs-10">
                <div class="form-title">
                    <h1 id="same_color"> <b id="same_color"> Let's Go </b> </h1>
                    <h4 id="same_color"> Helping you in...$avings; $atisfaction; $afety .. </h3>
                    <h4 id="same_color"> Riders On the Go.</h4>
                    <h4 id="same_color"> Drivers Now Operating In Your Area.</h4>
                    <h4 id="same_color"> We accept all Major Debit/Credit Cards.</h4>
                    <h4 id="same_color"> A Community Working Together.</h4>
                    <br>
                    
                    <!--
                    
                      <h1>Get your Taxi Fare now! </h1>
                    <p>416 Taxi rates worldwide + 23,318,146 calculations since 2009 </p>
                    
                    
                    --></div>
                </div>
            </div>
            <form action="{{ url('confirm/ride') }}" method="GET"
                  onkeypress="return disableEnterKey(event);">
                <div class="row">
                    <div class="col-md-6 col-lg-6">
                        <div class="map-form">
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label for="from-address">Start address</label>
                                <input type="text" name="s_address" class="form-control form-input"
                                       id="origin-input" aria-describedby="emailHelp"
                                       placeholder="Where do you want to Start?">
                                <small id="emailHelp" class="form-text text-muted">Minimum 5 characters for
                                    address
                                    suggestions
                                </small>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label for="destination">Destination address </label>
                                <input type="text" class="form-control form-input" id="destination-input"
                                       name="d_address"
                                       placeholder="Where do you want to go?">
                            </div>

                            <input type="hidden" name="s_latitude" id="origin_latitude">
                            <input type="hidden" name="s_longitude" id="origin_longitude">
                            <input type="hidden" name="d_latitude" id="destination_latitude">
                            <input type="hidden" name="d_longitude" id="destination_longitude">
                            <input type="hidden" name="current_longitude" id="long">
                            <input type="hidden" name="current_latitude" id="lat">

                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <p> Chose Ride Type </p>
                                <input type="hidden" value="" name="service_type" id="ride_type">
                                @foreach($serviceTypes as $service)
                                    <div class="ride-type"
                                         data-ride-type="{{ $service->id }}">{{ $service->name }}</div>
                                @endforeach

                                {{--                                <div class="ride-type" onclick="ride_type_selector('Medical')">Medical</div>--}}
                                {{--                                <div class="ride-type" onclick="ride_type_selector('Courier')">Courier</div>--}}
                                {{--                                <div class="ride-type" onclick="ride_type_selector('Take Out')">Take Out</div>--}}
                            </div>

                            <button  id="calculate_div" type="button" class="main-btn" onclick="calculateFare()">Start
                                Calculation
                            </button>
                        </div>
                        <div class=" map-result">
                            <div class="result-title">
                                <h4>Ride Summary</h4>
                            </div>
                            <div class="row">
                                <table class="table">
                                    <thead>
                                    <tr>

                                        <th scope="col"></th>
                                        <th scope="col">Price $</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>

                                        <td>Base Fee</td>
                                        <td><span id="base_rate">$</span></td>

                                    </tr>
                                    <tr>

                                        <td>Mile price</td>
                                        <td><span id="mileage">$</span></td>

                                    </tr>
                                    <tr>

                                        <td>Waiting time <sup>per minute</sup></td>
                                        <td><span id="wait_time">$</span></td>

                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row result_summary">
                                <div class="col-6 col-xs-12">
                                    <div>
                                        <h4><i class="fas fa-map-marker-alt mr-1"></i>Start</h4>
                                        <p class="result_origin"></p>
                                    </div>

                                    <div>
                                        <h4><i class="fas fa-arrows-alt-h"></i>Distance</h4>
                                        <p class="result_distance"></p>
                                    </div>
                                    <div>
                                        <h4><i class="fas fa-dollar-sign"></i>Taxi Fare</h4>
                                        <p id="result_total"
                                           style="color: chocolate; font-size:bold; font-size: 25px;"></p>
                                    </div>

                                </div>
                                <div class="col-6 col-xs-12">
                                    <div>
                                        <h4><i class="fas fa-map-marker-alt mr-1"></i>Destination</h4>
                                        <p class="result_destination"></p>
                                    </div>
                                    <div>
                                        <h4><i class="fas fa-clock mr-1"></i>Duration</h4>
                                        <p class="result_duration"></p>
                                    </div>
                                </div>

                            </div>
                            <button id="calculate_div"  type="submit" class="main-btn">Start Ride</button>
                        </div>
                        <div id="result"></div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="map-responsive">
                            <div id="map" style="width: 100%; height: 450px;"></div>
                        </div>
                    </div>
                </div>
            </form>

            <!-- End ride calculator -->
        </div>
    </div>
@endsection

@section('js')
    <script type="text/javascript">
        if ($('#ride-estimator').length > 0) {
            $(".map-result").hide();

            $(".ride-type").click(function () {
                $(".ride-type").removeClass("selected");
                $(this).addClass("selected");
            });

            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(success, fail);
            } else {
                console.log('Sorry, your browser does not support geolocation services');
                initAutocomplete();
            }

            function success(position) {
                document.getElementById('long').value = position.coords.longitude;
                document.getElementById('lat').value = position.coords.latitude

                if (position.coords.longitude != "" && position.coords.latitude != "") {
                    current_longitude = position.coords.longitude;
                    current_latitude = position.coords.latitude;
                }
                initAutocomplete();
            }

            function fail() {
                // Could not obtain location
                console.log('unable to get your location');
                initAutocomplete();
            }

            function disableEnterKey(e) {
                var key;
                if (window.e)
                    key = window.e.keyCode; // IE
                else
                    key = e.which; // Firefox

                if (key == 13)
                    return e.preventDefault();
            }

            if ($('.ride-type').length > 0) {
                $('.ride-type').each(function (i, elem) {
                    $(elem).on('click', function () {
                        var value = $(elem).data('ride-type');

                        $('#ride_type').val(value);
                    })
                });
            }
        }
    </script>

    {{--    <script type="text/javascript" src="{{ asset('asset/js/map.js') }}"></script>--}}
    {{--    <script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAP_KEY') }}&libraries=places&callback=initAutocomplete" async defer></script>--}}

    <script>

    </script>

  <!--<div id="city-section" class="row find-city no-margin" >

    <div class="container">

         <h2>{{ Setting::get('site_title','Tranxit') }} is in Twin Cities, Minnesota</h2>

     <form>

            <div class="input-group find-form">

                <input type="text" class="form-control" placeholder="Search" >

                <span class="input-group-addon">

                    <button type="submit">

                        <i class="fa fa-arrow-right"></i>

                    </button>  

                </span>

            </div>

        </form> 
    </div>

</div> -->

<!--

<div id="city-section" class=" row " style="background-image: url({{ asset('assset/img/banner.webp') }});">
    <div class="container"><img class="footer-city" src= "{{ asset('asset/img/banner.webp') }}" ></div>  </div>
-->
@endsection
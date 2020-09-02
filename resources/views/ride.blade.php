@extends('user.layout.app')

@section('content')
    <div class="banner row no-margin" style="background-image: url('{{ asset('asset/img/banner-bg.jpg') }}');">
        <div class="banner-overlay"></div>
        <div class="container">
            <div class="col-md-8">
                <h2 class="banner-head"><span class="strong">Always the ride you want</span><br>The best way to get
                    wherever you’re going</h2>
            </div>
            <div class="col-md-4">
                <div class="banner-form">
                    <div class="row no-margin fields">
                        <div class="left">
                            <img src="{{asset('asset/img/ride-form-icon.png')}}">
                        </div>
                        <div class="right">
                            <a href="{{url('login')}}">
                                <h3>Ride with {{Setting::get('site_title','Tranxit')}}</h3>
                                <h5>SIGN IN <i class="fa fa-chevron-right"></i></h5>
                            </a>
                        </div>
                    </div>
                    <div class="row no-margin fields">
                        <div class="left">
                            <img src="{{asset('asset/img/ride-form-icon.png')}}">
                        </div>
                        <div class="right">
                            <a href="{{url('register')}}">
                                <h3>Sign up to Ride</h3>
                                <h5>SIGN UP <i class="fa fa-chevron-right"></i></h5>
                            </a>
                        </div>
                    </div>

                    <p class="note-or">Or <a href="{{url('provider/login')}}">sign in</a> with your driver account.</p>

                </div>
            </div>
        </div>
    </div>

    <div class="row white-section no-margin">
        <div class="container">

            <div class="col-md-4 content-block small">
                <h2>Tap the app, get a ride</h2>
                <div class="title-divider"></div>
                <p>{{ Setting::get('site_title', 'Tranxit')  }} is the smartest way to get around. One tap and a car
                    comes directly to you. Your driver knows exactly where to go. And you can pay with either cash or
                    card.</p>
            </div>

            <div class="col-md-4 content-block small">
                <h2>Choose how to pay</h2>
                <div class="title-divider"></div>
                <p>When you arrive at your destination, either pay with cash or have your card automatically charged.
                    With {{ Setting::get('site_title', 'Tranxit') }}, the choice is yours.</p>
            </div>

            <div class="col-md-4 content-block small">
                <h2>You rate, we listen</h2>
                <div class="title-divider"></div>
                <p>Rate your driver and provide anonymous feedback about your trip. Your input helps us make every ride
                    a 5-star experience.</p>
            </div>


        </div>
    </div>

    <div class="row gray-section no-margin" id="ride-estimator">
        <div class="container">
            <h2 class="sub-head"><span class="strong">There’s a ride for every price</span><br>And any occasion</h2>

            <div class="car-tab">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#economy">ECONOMY</a></li>
                    <li><a data-toggle="tab" href="#premium">PREMIUM</a></li>
                    <li><a data-toggle="tab" href="#accessibility">ACCESSIBILITY</a></li>
                    <li><a data-toggle="tab" href="#carpool">CARPOOL</a></li>
                </ul>

                <!-- ride calculator -->

                <div class="form-wrapper">
                    <div class="container">
                        <form action="{{ url('confirm/ride') }}" method="GET"
                              onkeypress="return disableEnterKey(event);">
                            <div class="row">
                                <div class="col-md-6 col-lg-6">
                                    <div class="map-form">
                                        <div class="form-title">
                                            <h1>Get your Taxi Fare now! </h1>
                                            <p>416 Taxi rates worldwide + 23,318,146 calculations since 2009 </p>
                                        </div>
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

                                        <button type="button" class="main-btn" onclick="calculateFare()">Start
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
                                        <button type="submit" class="main-btn">Start Ride</button>
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
                    </div>
                </div>

                <!-- End ride calculator -->

                <div class="tab-content">
                    <div id="economy" class="tab-pane fade in active">
                        <div class="car-slide">
                            <img src="{{asset('/asset/img/car-slide1.png')}}">
                        </div>
                    </div>
                    <div id="premium" class="tab-pane fade">
                        <div class="car-slide">
                            <img src="{{asset('/asset/img/car-slide2.png')}}">
                        </div>
                    </div>
                    <div id="accessibility" class="tab-pane fade">
                        <div class="car-slide">
                            <img src="{{asset('/asset/img/car-slide3.png')}}">
                        </div>
                    </div>

                    <div id="carpool" class="tab-pane fade">
                        <div class="car-slide">
                            <img src="{{asset('/asset/img/car-slide4.png')}}">
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>


    <!-- <div class="row white-section no-margin">
        <div class="container">
            
            <div class="col-md-6 content-block">
                <h2 class="two-title"><span class="light">Pricing</span><br><span class="strong">Get a fare estimate</span></h2>
                <div class="title-divider"></div>
                <form>
                <div class="input-group fare-form">
                    <input type="text" class="form-control"  placeholder="Enter pickup location" >                               
                </div>

                <div class="input-group fare-form no-border-right">
                    <input type="text" class="form-control"  placeholder="Enter drop location" >
                    <span class="input-group-addon">
                        <button type="submit">
                            <i class="fa fa-arrow-right"></i>
                        </button>  
                    </span>
                </div>

                <div class="fare-detail">

                    <div class=fare-radio>
                        <input type="radio" name="fare" id="bmw" checked="checked">
                        <label for="bmw">
                            <div class="fade-radio-inner">
                                <div class="name">BMW</div>
                                <div class="rate">Rs.1500</div>
                            </div>
                        </label>
                    </div>

                    <div class=fare-radio>
                        <input type="radio" name="fare" id="audi">
                        <label for="audi">
                            <div class="fade-radio-inner">
                                <div class="name">Audi</div>
                                <div class="rate">Rs.2500</div>
                            </div>
                        </label>
                    </div>


                </div>

                <button type="submit" class="full-primary-btn fare-btn">RIDE NOW</button>

                </form>
            </div>

            <div class="col-md-6 map-right">
                <div class="map-responsive">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d386950.6511603643!2d-73.70231446529533!3d40.738882125234106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNueva+York!5e0!3m2!1ses-419!2sus!4v1445032011908" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>                            
            </div>
            
        </div>
    </div>          
 -->
    <div class="row gray-section no-margin">
        <div class="container">
            <div class="col-md-6 content-block">
                <h2>Safety Putting people first</h2>
                <div class="title-divider"></div>
                <p>Whether riding in the backseat or driving up front, every part of
                    the {{ Setting::get('site_title', 'Tranxit') }} experience has been designed around your safety and
                    security.</p>
                <a class="content-more" href="#">HOW WE KEEP YOU SAFE <i class="fa fa-chevron-right"></i></a>
            </div>
            <div class="col-md-6 img-block text-center">
                <img src="{{asset('asset/img/seat-belt.jpg')}}">
            </div>
        </div>
    </div>


    <div class="row find-city no-margin">
        <div class="container">
            <h2>{{Setting::get('site_title','Tranxit')}} is in Twin Cities, Minnesota</h2>
            <form>
                <div class="input-group find-form">
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-addon">
                        <button type="submit">
                            <i class="fa fa-arrow-right"></i>
                        </button>  
                    </span>
                </div>
            </form>
        </div>
    </div>
    <?php $footer = asset('asset/img/footer-city.png'); ?>
    <div class="footer-city row no-margin" style="background-image: url({{$footer}});"></div>
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
@stop
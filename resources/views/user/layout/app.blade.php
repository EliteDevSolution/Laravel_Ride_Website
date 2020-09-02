<!DOCTYPE html>

<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">



    <title>{{ Setting::get('site_title','Open Delivery') }}</title>



    <meta name="description" content="">

    <meta name="author" content="">

    <link rel="stylesheet" href="{{ asset('public/distance/style.css') }}">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous"> -->
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <link rel="shortcut icon" type="image/png" href="{{ Setting::get('site_icon') }}"/>



    <link href="{{asset('asset/css/bootstrap.min.css')}}" rel="stylesheet">

    <link href="{{asset('asset/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">

    <link href="{{asset('asset/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('asset/css/custom.css')}}" rel="stylesheet">
    <script type="text/javascript">
        var current_latitude = 43.653908;
        var current_longitude = -79.384293;
    </script>

    <style>
        .modal-ride-type {
            background-color: rgba(129, 129, 129, 0.603);
            margin: 1px;
            display: inline-block;
            padding: 5px 10px;
            width: 95px;
            text-align: center;
            border-radius: 15px;
            color: white;
            cursor: pointer;
        }

        .modal-ride-type.selected {
            background-color: rgba(0, 162, 255, 0.822);
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
            -webkit-box-shadow: 5px 5px 20px #b4b4b4;
            box-shadow: 5px 5px 20px #b4b4b4;
            -webkit-transform: scale(1.05);
            transform: scale(1.05);
        }
        #link_color{
            color:#EA1714;
        }
    </style>

</head>

<body>

    <div id="wrapper" >

        <div class="overlay" id="overlayer" data-toggle="offcanvas"></div>



        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation" style ="background-color:white">

            <ul class="nav sidebar-nav" >

                <li>

                </li>

               <li class="full-black" >
<!--{{ url('/register') }}  Sign up to ride -->
                    <a style = "background-color:#EA1714;" href="{{ url('/register') }}">SIGN UP to Ride</a>

                </li>

                <li class="full-black">
<!--{{ url('/provider/login') }}  become a Driver class="black-border" -->
                    <a style = "background-color:#EA1714;" href="{{ url('/provider/login') }}">SIGN UP to Driver</a>

                </li> 

               <!-- <li>
   <a href="https://ateamtaxi.us/login/riders/">Ride</a> -->
    <!--                 <a href="{{ url('/ride') }} ">Ride</a>

                </li>

                <li>

                    <a href="{{ url('/register') }}">Drive</a>

                </li> -->

                <li>

                    <a href="{{ 'https://api.whatsapp.com/send?phone='.Setting::get('contact_number') }}">Help</a>

                </li>

                <li>

                    <a href="{{url('/privacy')}}">Privacy Policy</a>

                </li>

                <li>

                    <a href="{{url('/terms_condition')}}">Terms and Conditions</a>

                </li>

                <li>
<a class="fare-estimator-button" href="{{ url('/fare_estimate') }}">Fare Estimator</a>
                   <!-- <a class="fare-estimator-button" href="{{ url('/fare_estimate') }}">Fare Estimator</a> -->

                </li>

                <li class="black-border"  >

                    <a style ="border :solid 2px #0E8BCE;color:#EA1714" href="{{ Setting::get('store_link_android','#') }}"><img width="25" height="25" src="{{ asset('/asset/img/2.png') }}"><span style="color:#EA1714">Download Shifmode Rider App</span></a>

                </li>

                <li class="black-border" >

                    <a  style ="border :solid 2px #0E8BCE;" href="{{ Setting::get('store_link_android','#') }}"><img width="25" height="25" src="{{ asset('/asset/img/1.png') }}"><span style="color:#EA1714">Download A-Team Taxi Driver App</span></a>

                </li>

            </ul>

        </nav>



        <div id="page-content-wrapper">

            <header>

                <nav class="navbar navbar-fixed-top">

                    <div class="container-fluid">

                        <div class="navbar-header">

                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">

                                <span class="sr-only">Toggle navigation</span>

                                <span class="icon-bar"></span>

                                <span class="icon-bar"></span>

                                <span class="icon-bar"></span>

                            </button>



                            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">

                                <span class="hamb-top"></span>

                                <span class="hamb-middle"></span>

                                <span class="hamb-bottom"></span>

                            </button>



                            <a class="navbar-brand" href="{{url('/')}}">@if(Setting::get('site_logo')!='')
                        <img style="height: 40px; margin-bottom: 15px;" src="{{ Setting::get('site_logo', asset('logo-black.png')) }}">
                        @endif</a>

                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                            <ul class="nav navbar-nav">

                                <li @if(Request::url() == url('/ride')) class="active" @endif>
<!-- {{url('/ride')}}  for ride page   -->
                                    <a href="{{ url('/ride') }} ">Ride</a>
                                 
                                </li>

                                <li @if(Request::url() == url('/drive')) class="active" @endif>

                                    <a href="{{url('/drive')}}">Drive</a>

                                </li>

                            </ul>

                            <ul class="nav navbar-nav navbar-right">

                                <li><a href="{{ 'https://api.whatsapp.com/send?phone='.Setting::get('contact_number') }}">Chat</a></li>

                              <!--  <li><a href="{{url('/login')}}">Signin</a></li> -->
                              
                              
                                <li class ="" style ="margin-top:0px;padding-top:0px"> 
                                <a style = "color:#EA1714;background:white; border:solid 1px #0E8BCE;font-size:14px;" class="menu-btn" href="{{ Setting::get('store_link_android','#') }}"> <img width ="40" height="25" src="{{ asset('/asset/img/2.png') }}">Rider Download</a>
                                </li>
                              
                              

                                <li class ="" style ="margin-top:0px;padding-top:0px"> 
                                <a style = "color:#EA1714;background:white; border:solid 1px #0E8BCE;font-size:14px;" class="menu-btn" href="{{ Setting::get('store_link_android','#') }}"> <img width ="40" height="25" src="{{ asset('/asset/img/1.png') }}">Download to Drive</a>
                                </li>

                            </ul>

                        </div>

                    </div>

                </nav>

            </header>



            @yield('content')

            <div class="page-content" style="background:white">

                <div class="footer row no-margin" style="background:white">

                    <div class="container">

                        <div class="footer-logo row no-margin">

                            <div class="logo-img">

                               @if(Setting::get('site_logo')!='')
                        <img style="height: 40px; margin-bottom: 15px;" src="{{ Setting::get('site_logo', asset('logo-black.png')) }}">
                        @endif </a>

                            </div>

                        </div>

                        <div class="row no-margin">

                            <div class="col-md-3 col-sm-3 col-xs-12">
 <h5 id="link_color" >Pages</h5>
 <br>
                                <ul>

                                 <!--   <li><a id="link_color" href="{{ url('/ride') }}">Ride</a></li>

                                    <li><a id="link_color" href="{{ url('/drive') }}">Drive</a></li> <li><a id="link_color" href="{{ '#city-section' }}"> <img style="height: 40px; margin-bottom: 15px;" src="{{ asset('/asset/img/banner.webp') }}"></a></li> -->

                                    <li><a id="link_color" href="{{ '#city-section' }}">Cities</a></li>
                                    
                                       

                                    <li><a id="link_color" class="fare-estimator-button" href="{{ url('/fare_estimate') }}">Fare Estimate</a></li>

     <li><a  id="link_color" href="{{url('#')}}">Terms & Conditions</a></li>

                                    <li><a id="link_color" href="{{url('/privacy')}}">Policy & Procedures</a></li>

                                </ul>

                            </div>


<div class="col-md-1 col-sm-1 col-xs-12">

</div>
                          <!--   <div class="col-md-3 col-sm-2 col-xs-12">

                               <ul>

                                    <li><a  id="link_color" href="{{url('#')}}">Terms & Conditions</a></li>

                                    <li><a id="link_color" href="{{url('/privacy')}}">Policy & Procedures</a></li>

                                </ul> 

                            </div>-->



                            <div class="col-md-5 col-sm-5 col-xs-11">

                                <h5 id="link_color" >Get App on</h5>

                                <ul class="app">
                                    
                                    
                             <li> 
                                <a style = "color:#EA1714;background:white; border:solid 1px #0E8BCE;font-size:14px;text-align:center" class="menu-btn" href="{{ Setting::get('store_link_android','#') }}"> <img width ="40" height="25" src="{{ asset('/asset/img/2.png') }}">Download Shifmode Rider App</a>
                                </li>
                                
                                
                                
                           <li > 
                                <a style = "color:#EA1714;background:white; border:solid 1px #0E8BCE;font-size:12.4px;text-align:center" class="menu-btn" href="{{ Setting::get('store_link_android','#') }}"> <img width ="40" height="25" src="{{ asset('/asset/img/1.png') }}">Download A-Team Taxi Driver App</a>
                                </li>
                                    
                                    
                                    
                                    
                                    

                              <!--      <li>

                                        <a href="{{Setting::get('store_link_ios','#')}}">

                                            <img src="{{asset('asset/img/appstore.png')}}">

                                        </a>

                                    </li>

                                    <li>

                                        <a href="{{Setting::get('store_link_android','#')}}">

                                            <img src="{{asset('asset/img/playstore.png')}}">

                                        </a>

                                    </li>     -->                                                    

                                </ul>                        

                            </div>



                            <div class="col-md-3 col-sm-3 col-xs-12">
                                
                                
                                       <h5 id="link_color" >Chat</h5>

                                <ul class="social">

                                 <!--   <li><a href="https://www.facebook.com/shiftmode.us/"><i   id="footer_color" class="fa fa-facebook" style="width:40px;height:50px;"></i></a></li>
                                 
                                   <li><a href="https://www.instagram.com/mrateam0514"><i style="width:40px;"  id="footer_color" class="fa fa-instagram"></i></a></li>-->
                                 <li><a href="https://www.facebook.com/shiftmode.us/"><img style="margin-left:1em;margin-top:0.6em;width:40px;height:40px;" src="{{asset('asset/img/fb.png')}}" ></a></li>

                                  
 <li><a href="https://www.instagram.com/mrateam0514"><img style="margin-left:1em;margin-top:0.6em;width:40px;height:40px;" src="{{asset('asset/img/insta.png')}}" ></a></li>
                                </ul>
                                
                                           <!-- https://lm.facebook.com/l.php?u=https%3A%2F%2Ffb.me%2Fateamtaxi&h=AT3eS-eHiBNC71HrKAJ4NHM1TfQpeUumGnUGg0gqjjsBpjTrAcV8I_7HW1flDE158amqrMVC12CuIo1C6WSjTBQy8c5JiMvUVXP5XSFFW1iYTLApfvF4msAnVOXI5kTXXIuE -->             

                         <!--       <h5 id="link_color" >Connect us</h5>

                                <ul class="social">

                                    <li><a href="https://www.facebook.com/shiftmode.us"><i class="fa fa-facebook"></i></a></li>

                                    <li><a href="https://www.instagram.com/mrateam0514/"><i class="fa fa-instagram"></i></a></li>

                                </ul> -->

                            </div>

                        </div>



                        <div class="row no-margin">

                            <div class="col-md-12 copy">

                                <p id="link_color">{{ Setting::get('site_copyright', '&copy; '.date('Y').' Open Delivery') }}</p>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>


{{--    <script src="{{asset('asset/js/jquery.min.js')}}"></script>--}}
    <script src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="{{asset('asset/js/bootstrap/bootstrap.min.js')}}"></script>

    <script src="{{asset('asset/js/scripts.js')}}"></script>

    <script src="{{ asset('public/distance/map.js') }}"></script>
    <!-- Replace the value of the key parameter with your own API key. -->
    <!-- AIzaSyDo2JAYRmaOUnruRdJjNBYxn7sOcF6GXQI -->
    <script src="https://maps.googleapis.com/maps/api/js?key={!! env('GOOGLE_MAP_KEY','') !!}
            &libraries=places&callback=initAutocomplete"></script>

    @yield('js')

</body>

</html>


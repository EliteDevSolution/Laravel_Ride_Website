<div class="modal fade bd-example-modal-lg" id="fare-estimator-modal" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Fare Estimator</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                {{--                    <div class="row gray-section no-margin" id="ride-estimator">--}}
                {{--                        <div class="container">--}}

                <!-- ride calculator -->

                    {{--                                <div class="form-wrapper">--}}
                    {{--                                    <div class="container">--}}
                    <form action="{{ url('confirm/ride') }}" method="GET"
                          onkeypress="return disableEnterKey(event);">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-title">
                                    <h1>Get your Taxi Fare now! </h1>
                                    <p>416 Taxi rates worldwide + 23,318,146 calculations since 2009 </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-lg-6">
                                <div class="modal_map-form">
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <label for="from-address">Start address</label>
                                        <input type="text" name="modal_s_address" class="form-control form-input"
                                               id="modal-origin-input" aria-describedby="emailHelp"
                                               placeholder="Where do you want to Start?">
                                        <small id="emailHelp" class="form-text text-muted">Minimum 5 characters for
                                            address
                                            suggestions
                                        </small>
                                    </div>
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <label for="destination">Destination address </label>
                                        <input type="text" class="form-control form-input" id="modal-destination-input"
                                               name="modal_d_address"
                                               placeholder="Where do you want to go?">
                                    </div>

                                    <input type="hidden" name="modal_s_latitude" id="modal-origin_latitude">
                                    <input type="hidden" name="modal_s_longitude" id="modal-origin_longitude">
                                    <input type="hidden" name="modal_d_latitude" id="modal-destination_latitude">
                                    <input type="hidden" name="modal_d_longitude" id="modal-destination_longitude">
                                    <input type="hidden" name="modal_current_longitude" id="long">
                                    <input type="hidden" name="modal_current_latitude" id="lat">

                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <p> Chose Ride Type </p>
                                        <input type="hidden" value="" name="modal_service_type" id="modal_ride_type">
                                        @foreach($serviceTypes as $service)
                                            <div class="modal-ride-type"
                                                 data-ride-type="{{ $service->id }}">{{ $service->name }}</div>
                                        @endforeach

                                        {{--                                <div class="ride-type" onclick="ride_type_selector('Medical')">Medical</div>--}}
                                        {{--                                <div class="ride-type" onclick="ride_type_selector('Courier')">Courier</div>--}}
                                        {{--                                <div class="ride-type" onclick="ride_type_selector('Take Out')">Take Out</div>--}}
                                    </div>

                                    <button type="button" class="main-btn" onclick="calculateFareModal()">Start
                                        Calculation
                                    </button>
                                </div>
                                <div class=" modal_map-result">
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
                                                <td><span id="modal_base_rate">$</span></td>

                                            </tr>
                                            <tr>

                                                <td>Mile price</td>
                                                <td><span id="modal_mileage">$</span></td>

                                            </tr>
                                            <tr>

                                                <td>Waiting time <sup>per minute</sup></td>
                                                <td><span id="modal_wait_time">$</span></td>

                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row result_summary">
                                        <div class="col-6 col-xs-12">
                                            <div>
                                                <h4><i class="fas fa-map-marker-alt mr-1"></i>Start</h4>
                                                <p class="modal_result_origin"></p>
                                            </div>

                                            <div>
                                                <h4><i class="fas fa-arrows-alt-h"></i>Distance</h4>
                                                <p class="modal_result_distance"></p>
                                            </div>
                                            <div>
                                                <h4><i class="fas fa-dollar-sign"></i>Taxi Fare</h4>
                                                <p id="modal_result_total"
                                                   style="color: chocolate; font-size:bold; font-size: 25px;"></p>
                                            </div>

                                        </div>
                                        <div class="col-6 col-xs-12">
                                            <div>
                                                <h4><i class="fas fa-map-marker-alt mr-1"></i>Destination</h4>
                                                <p class="modal_result_destination"></p>
                                            </div>
                                            <div>
                                                <h4><i class="fas fa-clock mr-1"></i>Duration</h4>
                                                <p class="modal_result_duration"></p>
                                            </div>
                                        </div>

                                    </div>
                                    <button type="submit" class="main-btn">Start Ride</button>
                                </div>
                                <div id="result"></div>
                            </div>
                            <div class="col-md-6 col-lg-6">
                                <div class="map-responsive">
                                    <div id="map-modal" style="width: 100%; height: 450px;"></div>
                                </div>
                            </div>
                        </div>
                    </form>
                    {{--                                    </div>--}}
                    {{--                                </div>--}}

                <!-- End ride calculator -->
                    {{--                            </div>--}}
                    {{--                        </div>--}}
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script src="{{ asset('public/distance/map-modal.js') }}"></script>
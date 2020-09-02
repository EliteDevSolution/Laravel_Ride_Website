    //your code here

    function initAutocompleteModal() {
        var map = new google.maps.Map(document.getElementById('map-modal'), {
            mapTypeControl: false,
            zoomControl: true,
            center: {lat: current_latitude, lng: current_longitude},
            zoom: 12,
            styles : [{"elementType":"geometry","stylers":[{"color":"#f5f5f5"}]},{"elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"elementType":"labels.text.fill","stylers":[{"color":"#616161"}]},{"elementType":"labels.text.stroke","stylers":[{"color":"#f5f5f5"}]},{"featureType":"administrative.land_parcel","elementType":"labels.text.fill","stylers":[{"color":"#bdbdbd"}]},{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#e4e8e9"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#eeeeee"}]},{"featureType":"poi","elementType":"labels.text.fill","stylers":[{"color":"#757575"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#e5e5e5"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#7de843"}]},{"featureType":"poi.park","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]},{"featureType":"road","elementType":"geometry","stylers":[{"color":"#ffffff"}]},{"featureType":"road.arterial","elementType":"labels.text.fill","stylers":[{"color":"#757575"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#dadada"}]},{"featureType":"road.highway","elementType":"labels.text.fill","stylers":[{"color":"#616161"}]},{"featureType":"road.local","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"color":"#e5e5e5"}]},{"featureType":"transit.station","elementType":"geometry","stylers":[{"color":"#eeeeee"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#c9c9c9"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#9bd0e8"}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]}]
        });

        if ($('#ride-estimator').length > 0) {
            initAutocomplete();
        }
        // new google.maps.places.Autocomplete(
        //     (document.getElementById('from-address')), {
        //         types: ['geocode']
        //     }
        // );
        //
        // new google.maps.places.Autocomplete(
        //     (document.getElementById('destination')), {
        //         types: ['geocode']
        //     }
        // );

        new AutocompleteModalDirectionsHandler(map);
    }


    /**
     * @constructor
     */

    function AutocompleteModalDirectionsHandler(map) {
        this.map = map;
        this.originPlaceId = null;
        this.destinationPlaceId = null;
        this.travelMode = 'DRIVING';
        var originInput = document.getElementById('modal-origin-input');
        var destinationInput = document.getElementById('modal-destination-input');
        var modeSelector = document.getElementById('modal-mode-selector');
        var originLatitude = document.getElementById('modal-origin_latitude');
        var originLongitude = document.getElementById('modal-origin_longitude');
        var destinationLatitude = document.getElementById('modal-destination_latitude');
        var destinationLongitude = document.getElementById('modal-destination_longitude');
        var polylineOptionsActual = new google.maps.Polyline({
            strokeColor: '#111',
            strokeOpacity: 0.8,
            strokeWeight: 4
        });

        this.directionsService = new google.maps.DirectionsService;
        this.directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: false, polylineOptions: polylineOptionsActual});
        this.directionsDisplay.setMap(map);

        var originModalAutocomplete = new google.maps.places.Autocomplete(
            originInput);
        var destinationModalAutocomplete = new google.maps.places.Autocomplete(
            destinationInput);

        originModalAutocomplete.addListener('modal_place_changed', function(event) {
            var place = originModalAutocomplete.getPlace();

            if (place.hasOwnProperty('place_id')) {
                if (!place.geometry) {
                    // window.alert("Autocomplete's returned place contains no geometry");
                    return;
                }
                originLatitude.value = place.geometry.location.lat();
                originLongitude.value = place.geometry.location.lng();
            } else {
                service.textSearch({
                    query: place.name
                }, function(results, status) {
                    if (status == google.maps.places.PlacesServiceStatus.OK) {
                        originLatitude.value = results[0].geometry.location.lat();
                        originLongitude.value = results[0].geometry.location.lng();
                    }
                });
            }
        });


        destinationModalAutocomplete.addListener('modal_place_changed', function(event) {
            var place = destinationModalAutocomplete.getPlace();;
            if (place.hasOwnProperty('place_id')) {
                if (!place.geometry) {
                    // window.alert("Autocomplete's returned place contains no geometry");
                    return;
                }
                destinationLatitude.value = place.geometry.location.lat();
                destinationLongitude.value = place.geometry.location.lng();
            } else {
                service.textSearch({
                    query: place.name
                }, function(results, status) {
                    if (status == google.maps.places.PlacesServiceStatus.OK) {
                        destinationLatitude.value = results[0].geometry.location.lat();
                        destinationLongitude.value = results[0].geometry.location.lng();
                    }
                });
            }
        });

        this.setupModalPlaceChangedListener(originModalAutocomplete, 'ORIG');
        this.setupModalPlaceChangedListener(destinationModalAutocomplete, 'DEST');
    }

    // Sets a listener on a radio button to change the filter type on Places
    // Autocomplete.

    AutocompleteModalDirectionsHandler.prototype.setupModalPlaceChangedListener = function(autocomplete, mode) {
        var me = this;
        autocomplete.bindTo('bounds', this.map);
        autocomplete.addListener('modal_place_changed', function() {
            var place = autocomplete.getPlace();
            if (!place.place_id) {
                // window.alert("Please select an option from the dropdown list.");
                return;
            }
            if (mode === 'ORIG') {
                me.originPlaceId = place.place_id;
            } else {
                me.destinationPlaceId = place.place_id;
            }
            me.routeModal();
        });

    };

    AutocompleteModalDirectionsHandler.prototype.routeModal = function() {
        if (!this.originPlaceId || !this.destinationPlaceId) {
            return;
        }

        var me = this;

        this.directionsService.routeModal({
            origin: {'placeId': this.originPlaceId},
            destination: {'placeId': this.destinationPlaceId},
            travelMode: this.travelMode
        }, function(response, status) {
            if (status === 'OK') {
                me.directionsDisplay.setDirections(response);
                $.event.trigger('modal_place_changed', {"map": me});
            } else {
                // window.alert('Directions request failed due to ' + status);
            }
        });
    };


    function calculateFareModal() {
        // var distance = calculateDistance(map.originPlaceId, map.destinationPlaceId);

        let modal_origin = $("#modal_origin-input").val();
        let modal_destination = $("#modal_destination-input").val();
        var modal_service_type = $('input[name=modal_service_type]').val();

        if (!modal_service_type) {
            alert('Please select Ride Type First');
            return
        }

        var modal_s_address = $('input[name=modal_s_address]').val();
        var modal_d_address = $('input[name=modal_d_address]').val();
        var modal_s_latitude = $('input[name=modal_s_latitude]').val();
        var modal_s_longitude = $('input[name=modal_s_longitude]').val();
        var modal_d_latitude = $('input[name=modal_d_latitude]').val();
        var modal_d_longitude = $('input[name=modal_d_longitude]').val();
        var modal_current_longitude = $('input[name=modal_current_longitude]').val();
        var modal_current_latitude = $('input[name=modal_current_latitude]').val();

        $.ajax({
            type: 'get',
            url: '/ride/fare_estimate',
            data: {
                s_address: modal_s_address,
                d_address: modal_d_address,
                s_latitude: modal_s_latitude,
                s_longitude: modal_s_longitude,
                d_latitude: modal_d_latitude,
                d_longitude: modal_d_longitude,
                current_longitude: modal_current_longitude,
                current_latitude: modal_current_latitude,
                service_type: modal_service_type,
            },
            success: function (data) {
                var result = $.parseJSON(data);
                $(".modal_result_origin").html(modal_origin);
                $(".modal_result_destination").html(modal_destination);
                $(".map-form").hide();
                $(".modal_map-result").fadeIn();

                $("#modal_base_rate").html('$ ' + result.service.fixed);
                $("#modal_mileage").html('$ ' + result.service.distance);
                $("#modal_wait_time").html('$ ' + result.service.minute);
                $(".modal_result_distance").html(result.fare.distance + ' Miles');
                $("#modal_result_total").html('Approx. $ ' + result.fare.estimated_fare);
                $(".modal_result_duration").html(result.fare.time);
                console.log(data);
                // $('#estimated_fare').val(fare.estimated_fare)
                // elementTo.val(data.fare);
            },
            error: function (error) {
                console.log(error)
            }
        })
    }

    // //your code here
    // document.getElementById('map-form').addEventListener('submit', function (evt) {
    //
    //     if (ride_type == '') {
    //         alert("select Ride Type");
    //     } else {
    //
    //
    //         let origin = $("#from-address").val();
    //         let destination = $("#destination").val();
    //         // var distance_text = calculateDistance(origin, destination);
    //
    //         // $(".result_origin").html(origin);
    //         // $(".result_destination").html(destination);
    //
    //
    //
    //
    //
    //         // $("#map-form").hide();
    //         //
    //         // $(".map-result").fadeIn();
    //     }
    //     return false;
    //
    // });
    //
    // function calculateDistance(origin, destination) {
    //     var service = new google.maps.DistanceMatrixService();
    //     service.getDistanceMatrix({
    //         origins: [origin],
    //         destinations: [destination],
    //         travelMode: google.maps.TravelMode.DRIVING,
    //         unitSystem: google.maps.UnitSystem.IMPERIAL,
    //         avoidHighways: false,
    //         avoidTolls: false
    //     }, callback);
    // }
    //
    // function callback(response, status) {
    //     if (status != google.maps.DistanceMatrixStatus.OK) {
    //         $('#result').html(err);
    //     } else {
    //         //console.log(response);
    //         var origin = response.originAddresses[0];
    //         var destination = response.destinationAddresses[0];
    //         if (response.rows[0].elements[0].status === "ZERO_RESULTS") {
    //             $('#result').html("Better get on a plane. There are no roads between " +
    //                 origin + " and " + destination);
    //         } else {
    //             var distance = response.rows[0].elements[0].distance;
    //             var duration = response.rows[0].elements[0].duration;
    //             console.log(duration);
    //             $(".result_duration").html(duration.text);
    //             var distance_value = distance.value;
    //             var distance_text = distance.text;
    //
    //
    //             var duration = duration.value;
    //             var miles = distance_text.substring(0, distance_text.length - 3);
    //
    //             get_fare_values(miles, duration);
    //
    //
    //             //   $('#result').html("It is " + miles + " miles from " + origin + " to " + destination);
    //         }
    //     }
    // }
    //
    // function ride_type_selector(x) {
    //     // alert(x);
    //     ride_type = x;
    //     if (x === 'Rideshare') {
    //         base_rate = 2.50;
    //         mileage = 1.25;
    //         wait_time = 0.15;
    //
    //     }
    //     if (x === 'Medical') {
    //         base_rate = 2.00;
    //         mileage = 1.25;
    //         wait_time = 0.15;
    //
    //     }
    //     if (x === 'Courier') {
    //         base_rate = 10.00;
    //         mileage = 0.75;
    //         wait_time = 0.25;
    //
    //     }
    //     if (x === 'Take Out') {
    //         base_rate = 3.50;
    //         mileage = 0.75;
    //         wait_time = 0.25;
    //
    //     }
    //
    //     $("#base_rate").html('$ ' + base_rate);
    //     $("#mileage").html('$ ' + mileage);
    //     $("#wait_time").html('$ ' + wait_time);
    //
    //
    //
    // }
    //
    // function get_fare_values(x, y) {
    //
    //     total_miles = x;
    //     total_duration = y;
    //
    //     total_duration = Math.round((total_duration / 3600) * 100) / 100;
    //     $(".result_distance").html(total_miles + ' Miles');
    //     //  $(".result_duration").html(total_duration + "Hours");
    //
    //     total_fare = Math.ceil((base_rate) + (mileage * total_miles) + (total_duration * wait_time / 60));
    //
    //
    //     $("#result_total").html('Approx. ' + '$' + total_fare);
    // }
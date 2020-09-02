    //your code here


    let key = "AIzaSyCZbulIgjkmPF3idqa7PG1J5fA-AqiJzCc";
    let total_miles = 0;
    let total_duration = 0;
    let ride_type = '';
    let total_fare = 0;




    var base_rate, mileage, wait_time;

    function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map'), {
            mapTypeControl: false,
            zoomControl: true,
            center: {lat: current_latitude, lng: current_longitude},
            zoom: 12,
            styles : [{"elementType":"geometry","stylers":[{"color":"#f5f5f5"}]},{"elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"elementType":"labels.text.fill","stylers":[{"color":"#616161"}]},{"elementType":"labels.text.stroke","stylers":[{"color":"#f5f5f5"}]},{"featureType":"administrative.land_parcel","elementType":"labels.text.fill","stylers":[{"color":"#bdbdbd"}]},{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#e4e8e9"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#eeeeee"}]},{"featureType":"poi","elementType":"labels.text.fill","stylers":[{"color":"#757575"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#e5e5e5"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#7de843"}]},{"featureType":"poi.park","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]},{"featureType":"road","elementType":"geometry","stylers":[{"color":"#ffffff"}]},{"featureType":"road.arterial","elementType":"labels.text.fill","stylers":[{"color":"#757575"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#dadada"}]},{"featureType":"road.highway","elementType":"labels.text.fill","stylers":[{"color":"#616161"}]},{"featureType":"road.local","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"color":"#e5e5e5"}]},{"featureType":"transit.station","elementType":"geometry","stylers":[{"color":"#eeeeee"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#c9c9c9"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#9bd0e8"}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]}]
        });
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

        new AutocompleteDirectionsHandler(map);
    }


    /**
     * @constructor
     */

    function AutocompleteDirectionsHandler(map) {
        this.map = map;
        this.originPlaceId = null;
        this.destinationPlaceId = null;
        this.travelMode = 'DRIVING';
        var originInput = document.getElementById('origin-input');
        var destinationInput = document.getElementById('destination-input');
        var modeSelector = document.getElementById('mode-selector');
        var originLatitude = document.getElementById('origin_latitude');
        var originLongitude = document.getElementById('origin_longitude');
        var destinationLatitude = document.getElementById('destination_latitude');
        var destinationLongitude = document.getElementById('destination_longitude');

        var polylineOptionsActual = new google.maps.Polyline({
            strokeColor: '#111',
            strokeOpacity: 0.8,
            strokeWeight: 4
        });

        this.directionsService = new google.maps.DirectionsService;
        this.directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: false, polylineOptions: polylineOptionsActual});
        this.directionsDisplay.setMap(map);

        var originAutocomplete = new google.maps.places.Autocomplete(
            originInput);
        var destinationAutocomplete = new google.maps.places.Autocomplete(
            destinationInput);

        originAutocomplete.addListener('place_changed', function(event) {
            var place = originAutocomplete.getPlace();

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


        destinationAutocomplete.addListener('place_changed', function(event) {
            var place = destinationAutocomplete.getPlace();

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

        this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
        this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');
    }

    // Sets a listener on a radio button to change the filter type on Places
    // Autocomplete.

    AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(autocomplete, mode) {
        var me = this;
        autocomplete.bindTo('bounds', this.map);
        autocomplete.addListener('place_changed', function() {
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
            me.route();
        });

    };

    AutocompleteDirectionsHandler.prototype.route = function() {
        if (!this.originPlaceId || !this.destinationPlaceId) {
            return;
        }

        var me = this;

        this.directionsService.route({
            origin: {'placeId': this.originPlaceId},
            destination: {'placeId': this.destinationPlaceId},
            travelMode: this.travelMode
        }, function(response, status) {
            if (status === 'OK') {
                me.directionsDisplay.setDirections(response);
                $.event.trigger('map_changed', {"map": me});
            } else {
                // window.alert('Directions request failed due to ' + status);
            }
        });
    };


    function calculateFare() {
        // var distance = calculateDistance(map.originPlaceId, map.destinationPlaceId);

        let origin = $("#origin-input").val();
        let destination = $("#destination-input").val();
        var service_type = $('input[name=service_type]').val();

        console.log(service_type);
        if (!service_type) {
            alert('Please select Ride Type First');
            return
        }

        var s_address = $('input[name=s_address]').val();
        var d_address = $('input[name=d_address]').val();
        var s_latitude = $('input[name=s_latitude]').val();
        var s_longitude = $('input[name=s_longitude]').val();
        var d_latitude = $('input[name=d_latitude]').val();
        var d_longitude = $('input[name=d_longitude]').val();
        var current_longitude = $('input[name=current_longitude]').val();
        var current_latitude = $('input[name=current_latitude]').val();

        $.ajax({
            type: 'get',
            url: '/ride/fare_estimate',
            data: {
                s_address: s_address,
                d_address: d_address,
                s_latitude: s_latitude,
                s_longitude: s_longitude,
                d_latitude: d_latitude,
                d_longitude: d_longitude,
                current_longitude: current_longitude,
                current_latitude: current_latitude,
                service_type: service_type,
            },
            success: function (data) {
                var result = $.parseJSON(data);
                $(".result_origin").html(origin);
                $(".result_destination").html(destination);
                $(".map-form").hide();
                $(".map-result").fadeIn();

                $("#base_rate").html('$ ' + result.service.fixed);
                $("#mileage").html('$ ' + result.service.distance);
                $("#wait_time").html('$ ' + result.service.minute);
                $(".result_distance").html(result.fare.distance + ' Miles');
                $("#result_total").html('Approx. $ ' + result.fare.estimated_fare);
                $(".result_duration").html(result.fare.time);
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
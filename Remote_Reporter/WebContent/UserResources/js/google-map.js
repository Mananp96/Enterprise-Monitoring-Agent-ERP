// ========== Google Map ========== //

$(function() {

    // Setup map
    function initialize() {

        // Options
        var myLatlng = new google.maps.LatLng(-37.817053, 144.955904);
        var mapOptions = {
            zoom: 15,
            center: myLatlng
        };

        var map = new google.maps.Map($('#map-canvas')[0], mapOptions);
        var contentString = 'Your Office';


        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });


        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: ''
        });


        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map, marker);
        });

    };
	
		// Initialize map on window load
	google.maps.event.addDomListener(window, 'load', initialize);

});
	
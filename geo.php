<?php
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA7IZt-36CgqSGDFK8pChUdQXFyKIhpMBY&sensor=true" type="text/javascript"></script>
    <script type="text/javascript">

        var map;
        var geocoder;
        var marker;
        var people = new Array();
        var latlng;
        var infowindow;

        $(document).ready(function() {
            ViewCustInGoogleMap();
        });
		
		function makeInfoWindowEvent(map, data, contentString, marker) {
      google.maps.event.addListener(marker, 'click', function() {
    data.setContent(contentString);
    data.open(map, marker);
  });
}

        function ViewCustInGoogleMap() {

            var mapOptions = {
                center: new google.maps.LatLng(27.790973300000000000,86.661108300000020000),   // Coimbatore = (11.0168445, 76.9558321)
                zoom: 7,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

            // Get data from database. It should be like below format or you can alter it.

            var data = '[{ "DisplayText": "adcv", "ADDRESS": "Jamiya Nagar Kovaipudur Coimbatore-641042", "LatitudeLongitude": "27.790973300000000000,86.661108300000020000", "MarkerId": "Customer" },{ "DisplayText": "abcd", "ADDRESS": "Coimbatore-641042", "LatitudeLongitude": "28.2900,84.6898", "MarkerId": "Customer"},{ "DisplayText": "adcv", "ADDRESS": "Jamiya Nagar Kovaipudur Coimbatore-641042", "LatitudeLongitude": "27.3500,87.6667", "MarkerId": "Customer" },{ "DisplayText": "adcv", "ADDRESS": "Jamiya Nagar Kovaipudur Coimbatore-641042", "LatitudeLongitude": "29.5500,81.2000", "MarkerId": "Customer" }]';

            people = JSON.parse(data); 

            for (var i = 0; i < people.length; i++) {
                setMarker(people[i]);
            }

        }

        function setMarker(people) {
            geocoder = new google.maps.Geocoder();
            infowindow = new google.maps.InfoWindow();
            if ((people["LatitudeLongitude"] == null) || (people["LatitudeLongitude"] == 'null') || (people["LatitudeLongitude"] == '')) {
                geocoder.geocode({ 'address': people["Address"] }, function(results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        latlng = new google.maps.LatLng(results[0].geometry.location.lat(), results[0].geometry.location.lng());
                        marker = new google.maps.Marker({
                            position: latlng,
                            map: map,
                            draggable: false,
                            html: people["DisplayText"],
                            icon: "images/marker/" + people["MarkerId"] + ".png"
                        });
                        //marker.setPosition(latlng);
                        //map.setCenter(latlng);
                        google.maps.event.addListener(marker, 'click', function(event) {
                            infowindow.setContent(this.html);
                            infowindow.setPosition(event.latLng);
                            infowindow.open(map, this);
                        });
                    }
                    else {
                        alert(people["DisplayText"] + " -- " + people["Address"] + ". This address couldn't be found");
                    }
                });
            }
            else {
                var latlngStr = people["LatitudeLongitude"].split(",");
                var lat = parseFloat(latlngStr[0]);
                var lng = parseFloat(latlngStr[1]);
                latlng = new google.maps.LatLng(lat, lng);
                marker = new google.maps.Marker({
                    position: latlng,
                    map: map,
                    draggable: false,               // cant drag it
                    html: people["DisplayText"]    // Content display on marker click
                    //icon: "images/marker.png"       // Give ur own image
                });
                //marker.setPosition(latlng);
                //map.setCenter(latlng);
                google.maps.event.addListener(marker, 'click', function(event) {
                    infowindow.setContent(this.html);
                    infowindow.setPosition(event.latLng);
                    infowindow.open(map, this);
                });
            }
        }

    </script>
</head>
<body>
   <div id="map-canvas" style="width: 800px; height: 500px;">
    </div>
</body>
</html>

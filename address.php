<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Geocoding service</title>
    <style>
      html, body, #map-canvas {
        height: 500px;
        margin: 0px;
        padding: 0px
		width:400px;
     margin-top:50px;
	  }
      #panel {
        position: absolute;
        top: -3px;
		float:right;
        right: 0%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
	  #date{
	  float:right;
	   position: absolute;
        top: 45px;
		float:right;
        right: 0%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
	  }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script>
var geocoder;
var map;
function initialize() {
  geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(29.07,81.51);
  var mapOptions = {
    zoom: 8,
    center: latlng
  }
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

function codeAddress() {
  var address = document.getElementById('address').value;
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    
    <div id="panel">
      <input id="address" type="textbox" value="Kathmandu,Nepal">
      <input type="button" value="Search" onclick="codeAddress()">
    </div>
   
    <div id="date">
    <form>
    <label><b>Date *</b></label><span class="left" name="">

    
     <select class="slct_2" id="bday" name="dd">
    	<option selected="selected" id="d0" value="-1">Day</option>
<?php
$birdate=1;
$birmonth=array("1","2","3","4","5","6","7","8","9","10","11","12");
$biryear=2013;
$realbirdat;
$realbiryre;
while($birdate<=31)
{
?>
<option id="d<?php echo $birdate; ?>" value="<?php echo $birdate; ?>"><?php echo $birdate; ?></option>
<?php
$birdate++;
}
?>
      </select>
          <select class="slct_2" id="bmon" name="mm">
    	<option selected="selected" value="-1">Month</option>
        <?php
$i=0;
foreach($birmonth as $month)
{
$i++;
?>
<option value="<?php echo $i; ?>" ><?php echo $month; ?></option>
<?php
}
?>
        
    </select>
    
    
     <select class="slct_2"id="byear" name="yyyy" >
    	<option selected="selected" value="-1">Year</option>
       <?php
while($biryear>1993)
{
?>
<option value="<?php echo $biryear; ?>"><?php echo $biryear; ?></option>
<?php
$biryear--;
}
?>
      
    </select>
    </span>
    </form>
    </div>
    <div class="clearfix"></div>
   <div id="map-canvas"></div>
  </body>
</html>
<?php 
include('earthquake.php');
$e=new Earthquake;
$res=$e->get();
?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Saviour</title>

<link href="bootstrap.css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="bootstrap.css/style.css" rel="stylesheet" type="text/css">
 <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA7IZt-36CgqSGDFK8pChUdQXFyKIhpMBY&sensor=true" type="text/javascript"></script>
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
  map = new google.maps.Map(document.getElementById('map'), mapOptions);
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
                    infowindow.setContent("hello");
                    infowindow.setPosition(event.latLng);
                    infowindow.open(map, this);
                });
            }
        }

    </script>

</head>

<body>
<div class="tp_hdr">
<div class="container">

	<div class="row">
    	<div  class="hdr_sec">
        	<div class="col-md-3 col-sm-3">
            	<a href="#"><img src="images/logo.png" alt="logo" class="img-responsive"/></a>
            </div><!-- end of col -->
            
            
            <div class="col-md-9 col-sm-9">
            	<div class="scial_wrp">
                	
                	<div class="scial_sec">
                    	<a class="fb" href="#"></a>
                        <a class="tw" href="#"></a>
                        <a class="skpe" href="#"></a>
                    </div><!-- end of scial_sec -->
                    
     <div id="panel">
      <input id="address" type="textbox" value="Kathmandu,Nepal">
      <input type="button" value="Search" onclick="codeAddress()">
    </div>
                      
                      <div class="frm">  
                       <form>
                       <span>Date:</span>
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
                           
                        </form>
                        
                    </div><!-- end of frm -->    
                    </div><!-- end of src_sec -->
                 
                </div><!-- end of scial_wrp -->
            </div><!-- end of col -->
            <div class="clearfix"></div>
        </div><!-- hdr_sec -->
     
    </div><!-- row -->

</div><!-- container -->
  </div><!-- tp_hdr -->	
  
<section>
<div class="container">

	<div class="row">
    	<div class="col-md-12">
        <div class="mp">
           <div id="map"></div>
        </div><!-- mp -->
        </div><!-- col -->
    </div><!-- row -->

	<div class="drn_wrp">
	<div class="row">
    <div class="col-md-3">
      <div class="mrq">
      <p>Earthquake Tweets</p>
      <?php
ini_set('display_errors', 1);
require_once('TwitterAPIExchange.php');


    $oauth_access_token = '2602299919-lP6mgkqAMVwvHM1L0Cplw8idxJzvuZoQRzyMkOx';
    $oauth_access_token_secret = 'wGWny2kz67hGdnLe3Uuy63YZs4nIGs8wQtCU7KnOT5brS';
    $consumer_key = 'zAzJRrPOj5BvOsK5QhscKogVQ';
    $consumer_secret = 'Uag0ujVJomqPbfdoR2UAWbRYhjzgoU9jeo7qfZHCxR6a6ozcu1';

    $token = '2602299919-lP6mgkqAMVwvHM1L0Cplw8idxJzvuZoQRzyMkOx';
    $token_secret = 'wGWny2kz67hGdnLe3Uuy63YZs4nIGs8wQtCU7KnOT5brS';
    $consumer_key = 'zAzJRrPOj5BvOsK5QhscKogVQ';
    $consumer_secret = 'Uag0ujVJomqPbfdoR2UAWbRYhjzgoU9jeo7qfZHCxR6a6ozcu1';

    $host = 'api.twitter.com';
    $method = 'GET';
    $path = '/1.1/search/tweets.json';  // api call path api.twitter.com/1.1/search/tweets.json

    $query = array( // query parameters
    'q' => 'earthquake',
    'count' => '5'
    );

    $oauth = array(
    'q' => '%23earthquake',
    'count' => 5,
    'oauth_consumer_key' => $consumer_key,
    'oauth_nonce' => time(),
    'oauth_signature_method' => 'HMAC-SHA1',
    'oauth_token' => $oauth_access_token,
    'oauth_timestamp' => time(),
    'oauth_version' => '1.0'
    );



    $oauth = array_map("rawurlencode", $oauth); // must be encoded before sorting
    $query = array_map("rawurlencode", $query);

    $arr = array_merge($oauth, $query); // combine the values THEN sort

    asort($arr); // secondary sort (value)
    ksort($arr); // primary sort (key)

    // http_build_query automatically encodes, but our parameters
    // are already encoded, and must be by this point, so we undo
    // the encoding step
    $querystring = urldecode(http_build_query($arr, '', '&'));

    $url = "https://$host$path";

    // mash everything together for the text to hash
    $base_string = $method."&".rawurlencode($url)."&".rawurlencode($querystring);

    // same with the key
    $key = rawurlencode($consumer_secret)."&".rawurlencode($token_secret);

    // generate the hash
    $signature = rawurlencode(base64_encode(hash_hmac('sha1', $base_string, $key, true)));

    // this time we're using a normal GET query, and we're only encoding the query params
    // (without the oauth params)
    $url .= "?".http_build_query($query);

    $oauth['oauth_signature'] = $signature; // don't want to abandon all that work!
    ksort($oauth); // probably not necessary, but twitter's demo does it

    // also not necessary, but twitter's demo does this too
    function add_quotes($str) { return '"'.$str.'"'; }
    $oauth = array_map("add_quotes", $oauth);

    // this is the full value of the Authorization line
    $auth = "OAuth " . urldecode(http_build_query($oauth, '', ', '));
    $options = array(
    CURLOPT_HTTPHEADER => array("Authorization: $auth"),
    //CURLOPT_POSTFIELDS => $postfields,
    CURLOPT_HEADER => false,
    CURLOPT_URL => $url . '?q=earthquake&count=5', 
    CURLOPT_RETURNTRANSFER => true, CURLOPT_SSL_VERIFYPEER => false
    );
    // do our business
    $feed = curl_init();
    curl_setopt_array($feed, $options);
    $json = curl_exec($feed);
    curl_close($feed);

    $twitter_data = json_decode($json,true);
   echo "<pre>";     
   //print_r($twitter_data); die;
	//$j=0;
	 ?>
		<marquee direction="up"><p>
                  <?php
	foreach($twitter_data['statuses'] as $twitter){
	 $text = $twitter['text'];
?>
		<?php echo $text;?><br/>
         <?php } ?>
        </p>
        </marquee>
       </div><!-- mrq -->	
     </div><!-- col -->
     <h2>Past Records of 2014 and 2015<h2>
     <div class="col-md-9">
    <div id="map-canvas" style="width: 800px; height: 500px;">
    </div>
        
     </div><!-- col -->	
    </div><!-- row -->	
   </div><!-- drn_wrp -->	
</div><!-- container -->	
</section><!-- section -->	
</body>
</html>

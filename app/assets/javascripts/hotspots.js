
$(document).ready(function (){

    function initialize() {
    	var hotCoords = new google.maps.LatLng(33.7625446, -84.4041539);



      var mapOptions = {
      center: hotCoords,
      zoom: 11,
      scrollwheel: false
      };
        
      var map = new google.maps.Map(document.getElementById('hotspot-map'), mapOptions);         
    
      var i;
      for (i = 0; i < hotspots.length; i++) {

      	var coords = new google.maps.LatLng(hotspots[i].latitude, hotspots[i].longitude);
  	    var marker = new google.maps.Marker({
	        position: coords,
	        map: map,
	        title: "ATL",
	        // icon: image,
	        animation:google.maps.Animation.Drop
	      });



      }

    }

      
    google.maps.event.addDomListener(window, 'load', initialize);
});

var myapp = angular.module('myapp', []);

myapp.controller('mapController', function($scope, $http){

  var sportsData = this;
  sportsData.test = "";


  this.init = function(){
    sportsData.fetch();
  }

  sportsData.fetch = function(){
	  $.ajax
	  ({
	    type: "get",
	    url: "https://www.opendatani.gov.uk/api/action/datastore_search?resource_id=9615b5b6-3f11-4968-b337-f1dc1e9db828&limit=5",
	    dataType: 'jsonp',
	    cache:true,
	    async: false,

	    success: function (data){
	      console.log(data);
	      sportsData.test = data.result.records;
	      $scope.$apply();

	      var cities = [
              {
                  city : 'Toronto',
                  desc : 'This is the best city in the world!',
                  lat : 43.7000,
                  long : -79.4000
              },
              {
                  city : 'New York',
                  desc : 'This city is aiiiiite!',
                  lat : 40.6700,
                  long : -73.9400
              },
              {
                  city : 'Chicago',
                  desc : 'This is the second best city in the world!',
                  lat : 41.8819,
                  long : -87.6278
              },
              {
                  city : 'Los Angeles',
                  desc : 'This city is live!',
                  lat : 34.0500,
                  long : -118.2500
              },
              {
                  city : 'Las Vegas',
                  desc : 'Sin City...\'nuff said!',
                  lat : 36.0800,
                  long : -115.1522
              }
          ];



	      var mapOptions = {
                  zoom: 15,
                  center: new google.maps.LatLng(54.5973, -5.9301),
                  mapTypeId: google.maps.MapTypeId.TERRAIN
              }

              $scope.map = new google.maps.Map(document.getElementById('map'), mapOptions);

              $scope.markers = [];

              var infoWindow = new google.maps.InfoWindow();

              var createMarker = function (info){

                  var marker = new google.maps.Marker({
                      map: $scope.map,
                      position: new google.maps.LatLng(info.lat, info.long),
                      title: info.city
                  });
                  marker.content = '<div class="infoWindowContent">' + info.desc + '</div>';

                  google.maps.event.addListener(marker, 'click', function(){
                      infoWindow.setContent('<h2>' + marker.title + '</h2>' + marker.content);
                      infoWindow.open($scope.map, marker);
                  });

                  $scope.markers.push(marker);

              }

              for (i = 0; i < cities.length; i++){
                  createMarker(cities[i]);
              }

              $scope.openInfoWindow = function(e, selectedMarker){
                  e.preventDefault();
                  google.maps.event.trigger(selectedMarker, 'click');
              }




	    },
	  error: function (jqXHR, textStatus, errorThrown) {
          console.log(textStatus + ': ' + errorThrown);
      }
	  });

}
});



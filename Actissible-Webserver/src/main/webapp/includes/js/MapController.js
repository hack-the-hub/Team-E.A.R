var myapp = angular.module('myapp', ['ngResource']);

myapp.controller('mapCtrl', function(FacilitiesResource, $scope){

  var ctrl = this;

  ctrl.mapOptions = {
        zoom: 8,
        center: new google.maps.LatLng(54.5948591, -6.0667142),
        mapTypeId: google.maps.MapTypeId.SATELITE
  };

  ctrl.infoWindow = new google.maps.InfoWindow();



  ctrl.queryObj = {};
  ctrl.facilities = [];
  ctrl.markers = [];
  ctrl.map = {};

  this.init = function(){
    ctrl.queryObj = new query();
    ctrl.map = new google.maps.Map(document.getElementById('map'), ctrl.mapOptions);
    ctrl.update();
  }

  this.toggleField = function(field){
    if (ctrl.queryObj[field]) {
      ctrl.queryObj[field] = false;
    }else{
      ctrl.queryObj[field] = true;
    }
    ctrl.update();
  }

  this.update = function(){
    FacilitiesResource.save(ctrl.queryObj).$promise.then(function(data){
      ctrl.facilities = data;
      ctrl.clearOverlays();
      for (i = 0; i < ctrl.facilities.length; i++){
        createMarker(ctrl.facilities[i]);
      }
      console.log(data);
    });
  }

  var createMarker = function (info){

        var marker = new google.maps.Marker({
            map: ctrl.map,
            position: new google.maps.LatLng(info.lat, info.lon),
            title: info.name
        });
        marker.content = '<div class="infoWindowContent">' + info.desc + '</div>';

        google.maps.event.addListener(marker, 'click', function(){
            ctrl.infoWindow.setContent('<h2>' + marker.title + '</h2>');
            ctrl.infoWindow.open($scope.map, marker);
        });

        ctrl.markers.push(marker);

    }

  ctrl.openInfoWindow = function(e, selectedMarker){
    e.preventDefault();
    google.maps.event.trigger(selectedMarker, 'click');
  }

  ctrl.clearOverlays =  function() {
  for (var i = 0; i < ctrl.markers.length; i++ ) {
    ctrl.markers[i].setMap(null);
  }
  ctrl.markers.length = 0;
}

});

class query{

  constructor(){
    this.adventure_sport = false;
    this.athletics = false;
    this.bowling = false;
    this.boxing = false;
    this.cricket = false;
    this.fitness = false;
    this.golf = false;
    this.motorsport = false;
    this.swimming = false;
    this.squash_handball = false;
    this.tennis = false;
    this.sports_hall = false;
    this.watersports = false;
    this.mountain_biking = false;
    this.pitches_grass = false;
    this.pitches_water = false;
    this.pitches_third_gen = false;
    this.pitches_sand = false;
  }

}

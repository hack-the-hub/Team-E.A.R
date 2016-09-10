var myapp = angular.module('myapp', ['ngResource']);

myapp.controller('mapCtrl', function (FacilitiesResource, $scope) {


    var ctrl = this;

    ctrl.mapOptions = {
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.SATELITE
    };


    ctrl.infoWindow = new google.maps.InfoWindow();


    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            ctrl.infoWindow.setPosition(pos);
            ctrl.infoWindow.setContent('Location found.');
            ctrl.map.setCenter(pos);
        }, function () {
            var pos = {
                lat: 54.5,
                lng: -5.9
            };
            ctrl.infoWindow.setPosition(pos);
            ctrl.infoWindow.setContent('Location found.');
            ctrl.map.setCenter(pos);
            handleLocationError(true, ctrl.infoWindow, ctrl.map.getCenter());
        });
    } else {
        // Browser doesn't support Geolocation
        var pos = {
            lat: 54,
            lng: -5.93
        };
        ctrl.infoWindow.setPosition(pos);
        ctrl.infoWindow.setContent('Location found.');
        ctrl.map.setCenter(pos);
        handleLocationError(false, ctrl.infoWindow, ctrl.map.getCenter());
    }


    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        ctrl.infoWindow.setPosition(pos);
        ctrl.infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    }

    ctrl.queryObj = {};
    ctrl.facilities = [];
    ctrl.markers = [];
    ctrl.map = {};

    this.init = function (type) {
        ctrl.queryObj = new query();
        ctrl.map = new google.maps.Map(document.getElementById('map'), ctrl.mapOptions);
        if(type != undefined){
            ctrl.toggleField(type);
        }
        ctrl.update();
    }

    this.toggleField = function (field) {
        if (ctrl.queryObj[field]) {
            ctrl.queryObj[field] = false;
        } else {
            ctrl.queryObj[field] = true;
        }
        ctrl.update();
    }

    this.update = function () {
        FacilitiesResource.save(ctrl.queryObj).$promise.then(function (data) {
            ctrl.facilities = data;
            ctrl.clearOverlays();
            for (i = 0; i < ctrl.facilities.length; i++) {
                createMarker(ctrl.facilities[i]);
            }
            console.log(data);
        });
    }

    var createMarker = function (info) {

        var t =[];
        if(info.golf === true) {
            t.push('Golf');
        }
        if(info.pitches_grass === true) {
            t.push('Football');
        }
        if(info.boxing === true) {
            t.push('Boxing');
        }
        if(info.fitness === true) {
            t.push('Fitness');
        }
        if(info.tennis === true) {
            t.push('Tennis');
        }
        if(info.swimming === true) {
            t.push('Swimming');
        }

        var marker = new google.maps.Marker({
            map: ctrl.map,
            position: new google.maps.LatLng(info.lat, info.lon),
            title: info.name,
            town: info.town,
            postcode: info.postcode,
            activities: t
        });
        marker.content = '<div class="infoWindowContent">' + info.desc + '</div>';

        google.maps.event.addListener(marker, 'click', function () {
            ctrl.infoWindow.setContent('<p>' + marker.title +
                '<br>' + marker.town +
                '<br>' + marker.postcode +
                '<br>' + marker.activities +
                '</p>');
            ctrl.infoWindow.open($scope.map, marker);
        });

        ctrl.markers.push(marker);

    }

    ctrl.openInfoWindow = function (e, selectedMarker) {
        e.preventDefault();
        google.maps.event.trigger(selectedMarker, 'click');
    }

    ctrl.clearOverlays = function () {
        for (var i = 0; i < ctrl.markers.length; i++) {
            ctrl.markers[i].setMap(null);
        }
        ctrl.markers.length = 0;
    }

});

class query {

    constructor() {
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

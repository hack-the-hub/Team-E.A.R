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

	    },
	  error: function (jqXHR, textStatus, errorThrown) {
          console.log(textStatus + ': ' + errorThrown);
      }
	  });

}
});



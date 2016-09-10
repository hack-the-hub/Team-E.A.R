var listApp = angular.module('listApp', []);

listApp.controller('listController', function($scope, $http){

    var sportsData = this;
    sportsData.test = "";


    this.init = function(){
        sportsData.fetch();
    }

    sportsData.fetch = function(){
        $.ajax
        ({
            type: "get",
            url: "https://www.opendatani.gov.uk/api/action/datastore_search?resource_id=9615b5b6-3f11-4968-b337-f1dc1e9db828",
            dataType: 'jsonp',
            cache: true,
            async: false,

            success: function (data) {
                console.log(data);
                sportsData.data = data.result.records;
                sportsData.links = data.result._links;
                $scope.$apply();
            }
        });
    }

});



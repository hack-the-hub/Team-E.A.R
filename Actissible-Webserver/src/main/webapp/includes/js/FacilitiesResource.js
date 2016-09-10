var myapp = angular.module('myapp');

myapp.factory('FacilitiesResource', ['$resource', function($resource){
  return $resource('/api/facilities/query', {}, {

    save : {
      method : 'POST',
      isArray : true
    }

  });
}]);

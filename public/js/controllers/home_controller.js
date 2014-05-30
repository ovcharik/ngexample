(function() {
  var homeController;

  homeController = angular.module('x01d-home', []);

  homeController.controller('HomeController', function($scope) {
    return $scope.message = 'Hello depend';
  });

}).call(this);

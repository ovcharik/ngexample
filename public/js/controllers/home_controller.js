(function() {
  var homeController;

  homeController = angular.module('x01d-home', []);

  homeController.controller('HomeController', function($scope) {
    $scope.message = 'Hello depend';
    $scope.changeTitle = function() {
      return $scope.message = 'test';
    };
  });

}).call(this);

homeController = angular.module 'x01d-home', []
homeController.controller 'HomeController', ($scope) ->
  $scope.message = 'Hello depend'
  
  $scope.changeTitle = () ->
    $scope.message = 'test'
  
  return

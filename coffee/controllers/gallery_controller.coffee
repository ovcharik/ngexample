galleryController = angular.module 'x01d-gallery', []

galleryController.controller 'GalleryController', ($scope) ->
  $scope.data = [
    'glyphicon-asterisk',
    'glyphicon-plus',
    'glyphicon-euro',
    'glyphicon-cloud',
    'glyphicon-glass'
  ]
  $scope.current = 0
  $scope.setCurrent = (c) ->
    $scope.current = c || 0
  $scope.isCurrent = (c) ->
    return $scope.current == c
  return

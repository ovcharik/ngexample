(function() {
  var galleryController;

  galleryController = angular.module('x01d-gallery', []);

  galleryController.controller('GalleryController', function($scope) {
    $scope.data = ['glyphicon-asterisk', 'glyphicon-plus', 'glyphicon-euro', 'glyphicon-cloud', 'glyphicon-glass'];
    $scope.current = 0;
    $scope.setCurrent = function(c) {
      return $scope.current = c || 0;
    };
    $scope.isCurrent = function(c) {
      return $scope.current === c;
    };
  });

}).call(this);

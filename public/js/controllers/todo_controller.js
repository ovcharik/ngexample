(function() {
  var todoController;

  todoController = angular.module('x01d-todo', []);

  todoController.controller('TodoController', function($scope) {
    return $scope.message = 'Todo depend';
  });

}).call(this);

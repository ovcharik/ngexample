(function() {
  var app;

  app = angular.module('x01d', ['ngRoute', 'x01d-controllers']);

  app.config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/home', {
        templateUrl: 'home_tpl',
        controller: 'HomeController'
      }).when('/todo', {
        templateUrl: 'todo_tpl',
        controller: 'TodoController'
      }).otherwise({
        redirectTo: '/home'
      });
    }
  ]);

}).call(this);

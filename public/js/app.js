(function() {
  var app;

  app = angular.module('x01d', ['ngRoute', 'x01d-controllers', 'x01d-directives']);

  app.config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/home', {
        templateUrl: 'home_tpl',
        controller: 'HomeController'
      }).when('/components', {
        templateUrl: 'components_tpl',
        controller: 'ComponentsController'
      }).when('/todo', {
        templateUrl: 'todo_tpl',
        controller: 'TodoController'
      }).otherwise({
        redirectTo: '/home'
      });
    }
  ]);

}).call(this);

app = angular.module 'x01d', [
  'ngRoute',
  'x01d-controllers',
  'x01d-directives'
]

app.config [
  '$routeProvider',
  ($routeProvider) ->
    $routeProvider
      .when '/home',
        templateUrl: 'home_tpl'
        controller:  'HomeController'
      .when '/todo',
        templateUrl: 'todo_tpl'
        controller:  'TodoController'
      .otherwise
        redirectTo:  '/home'
]

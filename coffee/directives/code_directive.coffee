codeDirective = angular.module 'x01d-code', []

codeDirective.directive 'code', () ->
  restrict: 'E'
  link: (scope, element, attrs) ->
    element.html hljs.highlightAuto(element.text()).value

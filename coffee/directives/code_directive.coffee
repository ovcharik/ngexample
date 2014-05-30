codeDirective = angular.module 'x01d-code', []

codeDirective.directive 'codeHightlight', () ->
  restrict: 'E'
  link: (scope, element, attrs) ->
    code = element.find('code')
    code.html hljs.highlightAuto(code.text()).value if code.length

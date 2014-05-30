(function() {
  var codeDirective;

  codeDirective = angular.module('x01d-code', []);

  codeDirective.directive('code', function() {
    return {
      restrict: 'E',
      link: function(scope, element, attrs) {
        return element.html(hljs.highlightAuto(element.text()).value);
      }
    };
  });

}).call(this);

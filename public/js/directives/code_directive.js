(function() {
  var codeDirective;

  codeDirective = angular.module('x01d-code', []);

  codeDirective.directive('codeHightlight', function() {
    return {
      restrict: 'E',
      link: function(scope, element, attrs) {
        var code;
        code = element.find('code');
        if (code.length) {
          return code.html(hljs.highlightAuto(code.text()).value);
        }
      }
    };
  });

}).call(this);

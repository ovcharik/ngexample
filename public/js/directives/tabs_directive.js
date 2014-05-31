(function() {
  var tabsDirective;

  tabsDirective = angular.module('x01d-tabs', []);

  tabsDirective.directive('tabs', function() {
    return {
      restrict: 'E',
      transclude: true,
      scope: {},
      replace: true,
      templateUrl: 'tabs_tpl',
      controller: function($scope, $element) {
        var panes;
        panes = $scope.panes = [];
        $scope.select = function(pane) {
          angular.forEach(panes, function(pane) {
            return pane.selected = false;
          });
          return pane.selected = true;
        };
        this.addPane = function(pane) {
          if (!panes.length) {
            $scope.select(pane);
          }
          return panes.push(pane);
        };
      },
      controllerAs: 'TabsController'
    };
  });

  tabsDirective.directive('pane', function() {
    return {
      require: '^tabs',
      restrict: 'E',
      transclude: true,
      scope: {
        title: '@'
      },
      replace: true,
      templateUrl: 'pane_tpl',
      link: function(scope, element, attrs, TabsController) {
        return TabsController.addPane(scope);
      }
    };
  });

}).call(this);

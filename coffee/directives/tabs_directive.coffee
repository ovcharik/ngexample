tabsDirective = angular.module 'x01d-tabs', []

tabsDirective.directive 'tabs', () ->
  restrict: 'E'
  transclude: true
  scope: {}
  replace: true
  templateUrl: 'tabs_tpl'
  controller: ($scope, $element) ->
    panes = $scope.panes = []
    
    $scope.select = (pane) ->
      angular.forEach panes, (pane) -> pane.selected = false
      pane.selected = true
    
    @addPane = (pane) ->
      $scope.select(pane) if not panes.length
      panes.push pane
    
    return
  controllerAs: 'TabsController'

tabsDirective.directive 'pane', () ->
  require: '^tabs',
  restrict: 'E'
  transclude: true
  scope: { title: '@' }
  replace: true
  templateUrl: 'pane_tpl'
  link: (scope, element, attrs, TabsController) ->
    TabsController.addPane scope

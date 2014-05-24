require.config
  # urlArgs: "v=" +  (new Date()).getTime()
  paths:
    'jQuery': '//code.jquery.com/jquery-1.11.0.min'
    'angular': 'https://code.angularjs.org/1.2.16/angular.min'
    'angular-route': '../bower_components/angular-route/angular-route.min'
    'angular-ui': '../bower_components/angular-ui/build/angular-ui.min'
    'angular-bootstrap': '../bower_components/angular-bootstrap/ui-bootstrap.min'
    'angular-bootstrap-tpls': '../bower_components/angular-bootstrap/ui-bootstrap-tpls.min'
  shim:
    'jQuery': {'exports': 'jQuery'}
    'angular': {'exports': 'angular'}
    'angular-route': {deps: ['angular']}
    'angular-ui': {deps: ['angular']}
    'angular-bootstrap': {deps: ['angular']}
    'angular-bootstrap-tpls': {deps: ['angular']}

require ['jQuery', 'angular', './routes'], ($, angular) ->
  $ ->
    angular.bootstrap document, ['app']
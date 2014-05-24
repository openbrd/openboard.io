require.config
  # urlArgs: "v=" +  (new Date()).getTime()
  paths:
    'jQuery': '//code.jquery.com/jquery-1.11.0.min'
    'angular': 'https://code.angularjs.org/1.2.16/angular.min'
    'angular-route': '../bower_components/angular-route/angular-route.min'
    'angular-bootstrap': '//cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap.min'
    'angular-bootstrap-tpls': '//cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.min'
  shim:
    'jQuery': {'exports': 'jQuery'}
    'angular': {'exports': 'angular'}
    'angular-route': {deps: ['angular']}
    'angular-bootstrap': {deps: ['angular']}
    'angular-bootstrap-tpls': {deps: ['angular']}

require ['jQuery', 'angular', './routes'], ($, angular) ->
  $ ->
    angular.bootstrap document, ['app']
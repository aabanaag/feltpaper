require.config
  paths:
    'jquery': '../components/jquery/dist/jquery.min'
    'underscore': '../components/underscore/underscore-min'
    'backbone': '../components/backbone/backbone-min'
    'jade': '../components/require-jade/jade'
    'bootstrap': '../components/bootstrap/dist/js/bootstrap.min'

  shim:
    'jquery': exports: 'jquery'
    'underscore':
      deps: ['jquery']
      exports: '_'
    'backbone':
      deps: [
        'jquery'
        'underscore'
      ]
      exports: 'Backbone'
    'bootstrap':
      deps: ['jquery']
      exports: 'jquery'


require [
  'framework/core'
  './router'
  'bootstrap'
], (Core, Router) ->
  'use strict'

  new Router
  Core.MVC.history.start()

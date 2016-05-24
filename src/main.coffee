require.config
  paths:
    'jquery': './vendor/jquery'
    'underscore': './vendor/underscore'
    'backbone': './vendor/backbone'
    'jade': './vendor/jade'
    'bootstrap': './vendor/bootstrap'

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

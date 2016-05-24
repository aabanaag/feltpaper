require.config
  paths:
    'jquery': './components/jquery'
    'underscore': './components/underscore'
    'backbone': './components/backbone'
    'jade': './components/jade'
    'bootstrap': './components/bootstrap'

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

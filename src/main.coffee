require.config
  paths:
    'jquery': '../vendor/jquery'
    'underscore': '../vendor/underscore'
    'backbone': '../vendor/backbone'
    'text': '../vendor/text'
    'bootstrap': '../vendor/bootstrap'

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
  'bootstrap'
], (Core) ->
  'use strict'

  Core.MVC.history.start()

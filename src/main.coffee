require.config
  paths:
    'jquery': '../vendor/jquery'
    'underscore': '../vendor/underscore'
    'backbone': '../vendor/backbone'
    'text': '../vendor/text'
    'bootstrap': '../vendor/bootstrap'
    # CORE
    'core': './framework/core'
    'presenter': './framework/presenter'
    'storage': './framework/storage'
    'globals': './config/globals'

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
  'core'
  'bootstrap'
], (Core) ->
  'use strict'

  Core.MVC.history.start()

define (require) ->
  'use strict'

  Backbone = require('backbone')

  Storage = require('storage')
  Presenter = require('presenter')
  Global = require('globals')

  core =
    MVC: Backbone
    storage: Storage
    presenter: Presenter
    config:
      globals: Global

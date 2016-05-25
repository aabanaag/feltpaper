define (require) ->
  'use strict'

  Backbone = require('backbone')

  Storage = require('./storage')
  Presenter = require('./presenter')

  core =
    MVC: Backbone
    storage: Storage
    presenter: Presenter

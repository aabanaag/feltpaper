define (require) ->
  'use strict'

  Backbone = require('backbone')
  $ = require('jquery')

  Storage = require('./storage')

  core =
    MVC: Backbone,
    storage: Storage

define (require) ->
  'use strict'

  Core = require('framework/core')

  TableMain = require('./app/table/main')

  Core.MVC.Router.extend
    routes:
      '': 'index'

    index: ->
      new TableMain()

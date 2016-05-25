define (require) ->
  'use strict'

  Core = require('../../framework/core')
  View = require('./views/view')

  Core.MVC.Router.extend

    initialize: ->
      window.location.hash = 'table'

    routes:
      'table': 'index'

    index: ->
      Core.presenter.navigate(new View())

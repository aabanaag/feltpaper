define (require) ->
  'use strict'

  Core = require('../../../framework/core')
  template = require('text!../templates/table.html')

  Core.MVC.View.extend
    template: template

    initialize: ->
      this.$el.html(this.template)

    render: ->
      this

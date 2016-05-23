define (require) ->
  'use strict'

  _ = require('underscore')

  local =
    get: (key) ->
      JSON.parse window.localStorage.getItem(key)
    set: (key, value) ->
      window.localStorage.setItem(key, value)
    clear: ->
      window.localStorage.clear()
    save: (args) ->
      if _.isObject(args)
        _.each args, (value, key, list) =>
          item = this.get(key)

          if item
            this.set(key, value)

      console.log 'Error'
  

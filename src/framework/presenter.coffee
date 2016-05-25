define (require) ->
  'use strict'

  $ = require('jquery')

  presenter =
    VIEWPORT: $('#main-container')
    CURRENT_VIEW: undefined
    navigate: (view) ->
      unless view
        throw new Error 'Presenter: View is not defined'

      if this.CURRENT_VIEW
        if this.CURRENT_VIEW.childViews
          childView = this.CURRENT_VIEW.childViews

          i = 0
          while childViews.length
            childViews[i].remove()
            i++

        this.CURRENT_VIEW.remove()

      this.VIEWPORT.html(view.render().el)

      this.CURRENT_VIEW = view

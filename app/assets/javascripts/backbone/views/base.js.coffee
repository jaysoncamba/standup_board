class sub.Views.Base extends Backbone.View
  leave: ->
    @unbindAll()
    @$el.html('')

  unbindAll: ->
    @off()
    @undelegateEvents()

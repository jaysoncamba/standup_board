window.sub =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  syncing: {}
  initialize: ->
    this.mainRouter = new sub.Routers.Todos()
    Backbone.history.start
      root: "/todos"

$(document).ready ->
  sub.initialize()

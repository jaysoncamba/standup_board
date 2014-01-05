window.StandupBoard =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    this.mainRouter = new StandupBoard.Routers.Todos()
    Backbone.history.start
      root: "/todos"

$(document).ready ->
  StandupBoard.initialize()

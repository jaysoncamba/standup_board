class StandupBoard.Views.TodosShow extends Backbone.View
  template: JST['todos/show']
  el: '#todos-container'

  initialize: ->

  render: ->
    @$el.html(@template())
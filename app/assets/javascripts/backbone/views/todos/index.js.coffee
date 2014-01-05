class StandupBoard.Views.TodosIndex extends Backbone.View
  template: JST['todos/index']
  el: '#todos-container'
  collection: new StandupBoard.Collections.Todos
  events:
    # kinda generic :D
    'click button' : 'addNewTodo'

  initialize: ->
    @collection.on('add', @appendTodo, @)
    @collection.fetch()

  render: ->
    @$el.html(@template())

  appendTodo: (todo) ->
    view = new StandupBoard.Views.TodosTableRow(model: todo, collection: @collection)
    # we don't need to use .el if we're returning only the html
    elem = view.render().el
    @$el.find('table').append(elem)

  addNewTodo: (event) ->
    StandupBoard.mainRouter.navigate('/new', {trigger: true})

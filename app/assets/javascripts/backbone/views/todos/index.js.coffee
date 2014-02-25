class sub.Views.TodosIndex extends sub.Views.Base
  template: JST['todos/index']
  el: '#todos-container'
  collection: new sub.Collections.Todos
  events:
    # kinda generic :D
    'click button' : 'addNewTodo'

  initialize: ->
    @collection.on('add', @appendTodo, @)
    @collection.fetch()

  render: ->
    @$el.html(@template())

  appendTodo: (todo) ->
    view = new sub.Views.TodosTableRow(model: todo, collection: @collection)
    # we don't need to use .el if we're returning only the html
    elem = view.render().el
    @$el.find('table').append(elem)

  addNewTodo: (event) ->
    @leave()
    sub.mainRouter.navigate('/new', {trigger: true})

class StandupBoard.Routers.Todos extends Backbone.Router
  routes:
    '' : 'index'
    'new' : 'form'
    'edit' : 'form'
    'show/:id' : 'show'

  index: ->
    view = new StandupBoard.Views.TodosIndex
    view.render().el

  form: ->
    collection = new StandupBoard.Collections.Todos()
    view = new StandupBoard.Views.TodosForm(collection: collection)
    view.render().el

  show: (id) ->
    model = new StandupBoard.Models.Todo({id: id})
    model.fetch()
    view = new StandupBoard.Views.TodosShow(model: model )
    view.render().el


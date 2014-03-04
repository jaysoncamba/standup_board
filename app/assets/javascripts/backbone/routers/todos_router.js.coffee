class sub.Routers.Todos extends Backbone.Router
  routes:
    '' : 'index'
    'new' : 'form'
    'show/:id' : 'show'

  index: ->
    if (!sub.indexView)
      sub.indexView = new sub.Views.TodosIndex()
      sub.indexView.render()
    else
      sub.indexView.render()
      # backbone bug
      # supposed to be just: sub.indexView.collection.fetch({reset: true})
      # but due to the changes in the collection, i haven't figured out how to due this yet ;/
      sub.indexView.collection.reset()
      sub.indexView.collection.fetch()
      sub.indexView.delegateEvents() # delegate events when the view is recycled

  form: (id) ->
    model = new sub.Models.Todo(id: id)
    new sub.Views.TodosForm(model: model)

  show: (id) ->
    model = new sub.Models.Todo
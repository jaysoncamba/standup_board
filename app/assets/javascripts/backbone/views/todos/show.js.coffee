class sub.Views.TodosShow extends sub.Views.Base
  template: JST['todos/show']
  el: '#todos-container'
  events:
    'click .backtoindex' : 'backToIndex'
  initialize: (model) ->
    sub.syncing = @
    if (@model.get('id'))
      @model.fetch(
        success: (model, response) =>
          sub.syncing.render()
          sub.syncing = {}
      )

  render: ->
    @$el.html(@template(@model.toJSON()))

  backToIndex: (event) ->
    # probably better to use window.location
    sub.mainRouter.navigate('/', {trigger: true})



class sub.Views.TodosForm extends sub.Views.Base
  template: JST['todos/form']
  el: '#todos-container'
  collection: new sub.Collections.Todos
  events:
    'click h2' : 'backToIndex'
    'click .submit-ticket' : 'submitForm'
    'click .index' : 'backToIndex'

  backToIndex: (event) ->
    # probably better to use window.location
    sub.mainRouter.navigate('/', {trigger: true})

  initialize: (model) ->
    if (@model.get('id'))
      @model.fetch(
        success: (model, response) =>
          @render()
      )
     else
      @render()

  render: ->
    @$el.html(@template(@model.toJSON()))

  submitForm: (event) ->
    event.preventDefault()
    @model.save(
      {todo:getFormObj(@$el.find('form'))},
      success: (model, resp) =>
        if (resp.success)
          @leave()
          sub.mainRouter.navigate('/', true)
        else
          # show error
          alert('There is an error')
    )


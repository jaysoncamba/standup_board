class StandupBoard.Views.TodosForm extends Backbone.View
  template: JST['todos/form']
  el: '#todos-container'
  events:
    'click h2' : 'backToIndex'
    'click button' : 'submitForm'

  initialize: ->


  backToIndex: (event) ->
    # probably better to use window.location
    StandupBoard.mainRouter.navigate('/', {trigger: true})

  render: ->
    @$el.html(@template())

  submitForm: (event) ->
    event.preventDefault()
    @collection.create(
      getFormObj(this.$el.find('form')),
      success: (response) ->
        StandupBoard.mainRouter.navigate('/show/' +response.get('id'), {trigger: true})
      )

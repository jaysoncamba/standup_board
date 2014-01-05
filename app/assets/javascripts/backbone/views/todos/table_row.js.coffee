class StandupBoard.Views.TodosTableRow extends Backbone.View
  template: JST['todos/row']
  tagName: 'tr'
  events:
    'click .delete' : 'removeTodo'
    'click .update_status' : 'updateTodoStatus'

  initialize: ->
    # the newer syntax which replaces the legacy:
    #   @model.on('destroy', @remove, @)
    # ideally this.remove should only be called once the destroy action successfully completes
    @listenTo(@model, 'destroy', @remove)

  render: ->
    @$el.html(@template(@model.toJSON()))
    @

  removeTodo: (event) ->
    @model.destroy()

  updateTodoStatus: (event) ->
    alert('this is not yet implemented')

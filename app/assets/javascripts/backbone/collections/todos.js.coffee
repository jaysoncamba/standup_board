class sub.Collections.Todos extends Backbone.Collection
  url: '/todos'
  model: sub.Models.Todo

  initialize: ->

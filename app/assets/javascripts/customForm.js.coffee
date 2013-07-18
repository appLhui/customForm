
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./routes
#= require_self
#= require router
#= require store

CustomForm.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'custom_tables'


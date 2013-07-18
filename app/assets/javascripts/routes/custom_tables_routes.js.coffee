CustomForm.CustomTablesRoute = Ember.Route.extend
  renderTemplate:->
    @render("custom_tables", {outlet: "custom_tables"})
  model: ->
    CustomForm.CustomTable.find()



CustomForm.CustomTableNewRoute = Ember.Route.extend
  renderTemplate:->
    @render("custom_table_new", {outlet: "custom_table_new"})

  deactivate: ->
    if this.currentModel.get('isNew')
      this.currentModel.get('transaction').rollback()

  model: ->
    CustomForm.CustomTable.createRecord().one 'didCreate',@,->
      @transitionTo 'custom_tables'

  events:
    goBack:->
      history.back()


CustomForm.CustomTableRoute = Ember.Route.extend
  renderTemplate:->
    @render("custom_table", {outlet: "custom_table"})
  model: (params)->
    CustomForm.CustomTable.find(params.custom_table_id)




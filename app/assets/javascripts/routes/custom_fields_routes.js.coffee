CustomForm.CustomFieldNewRoute = Ember.Route.extend
  renderTemplate:->
    @render("custom_field_new", {outlet: "custom_field_new"})

  model: ->
    customTable=CustomForm.CustomTable.find(@controllerFor('customTable').get('model.id'))
    customField=customTable.get('customFields').createRecord()
    customField.one 'didCreate',@,->
      controller=@get('controller')
      controller.transitionToRoute 'custom_fields',customTable

  deactivate: ->
    if this.currentModel.get('isNew')
      this.currentModel.get('transaction').rollback()

  events:
      goBack:->
        history.back()


CustomForm.CustomFieldsRoute = Ember.Route.extend

  renderTemplate:->
    @render("custom_fields", {outlet: "custom_fields"})

  setupController: (controller, model) ->
    customFields=CustomForm.CustomField.find(custom_table_id: @controllerFor('customTable').get('model.id'))
    controller.set 'model',customFields





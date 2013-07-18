CustomForm.CustomFieldNewController = Ember.ObjectController.extend
  needs: 'custom_tables'
  create:->
    @get('store').commit() if @get('model').get('isValid')


CustomForm.CustomFieldsController = Ember.ArrayController.extend
  needs:'custom_table'
  destroy:(model)->
    model.deleteRecord()
    @get('store').commit()
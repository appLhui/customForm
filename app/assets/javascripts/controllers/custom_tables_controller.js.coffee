CustomForm.CustomTablesController = Ember.ObjectController.extend
    destroy:(model)->
      model.deleteRecord()
      @get('store').commit()
    search: ''
    searchedContent: (->
      if @get('search')
        regexp = new RegExp @get('search')
        @get('content').filter (item)->
          regexp.test item.get('name')
      else
        @get('content')
    ).property('search')


CustomForm.CustomTableNewController = Ember.ObjectController.extend
    create:->
        @get('store').commit() if @get('model').get('isValid')



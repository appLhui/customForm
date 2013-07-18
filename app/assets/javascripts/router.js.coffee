
CustomForm.Router.map ->
  @resource 'custom_tables',->
    @resource 'custom_table',{path:':custom_table_id'},->
      @resource 'custom_fields'
  @resource 'custom_field_new'
  @resource 'custom_table_new'

#CustomForm.Router.reopen
#  location: 'none'





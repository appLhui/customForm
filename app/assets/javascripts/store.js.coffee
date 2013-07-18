CustomForm.Store = DS.Store.extend
  adapter: DS.RESTAdapter.create
    url: 'http://0.0.0.0:3000'


DS.RESTAdapter.map('CustomForm.CustomTable', {
  cunstomFields:
    embedded: 'load'
})
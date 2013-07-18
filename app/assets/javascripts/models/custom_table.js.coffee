CustomForm.CustomTable = DS.Model.extend Ember.Validations.Mixin,
  name: DS.attr('string')
  desc: DS.attr('string')
  customFields:DS.hasMany('CustomForm.CustomField')

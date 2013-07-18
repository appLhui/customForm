CustomForm.CustomValue = DS.Model.extend Ember.Validations.Mixin,
  customFieldId: DS.attr('number')
  value: DS.attr('string')
  formId: DS.attr('number')

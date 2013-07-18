CustomForm.CustomField = DS.Model.extend Ember.Validations.Mixin,
  lable: DS.attr('string')
  maxLength: DS.attr('number')
  isRequired: DS.attr('boolean')
  defaultValue: DS.attr('string')
  valueType: DS.attr('string')
  customTable: DS.belongsTo('CustomForm.CustomTable')
  validations:
    lable:
      presence: true
    maxLength:
      numericality:
        onlyInteger:true
        greaterThan:0


CustomForm.valueType = ['string','number','boolean']


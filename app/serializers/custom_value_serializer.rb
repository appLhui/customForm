class CustomValueSerializer < ActiveModel::Serializer
  attributes :id, :custom_field_id, :value, :form_id
end

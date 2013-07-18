class CustomFieldSerializer < ActiveModel::Serializer
  attributes :id, :lable, :max_length, :is_required, :default_value, :custom_table_id
end

class CustomValue < ActiveRecord::Base
  attr_accessible :custom_field_id, :form_id, :value
  belongs_to :custom_field
end

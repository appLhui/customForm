class CustomField < ActiveRecord::Base
  has_many :custom_values
  belongs_to :custom_table
  attr_accessible :custom_table_id, :default_value, :value_type, :is_required, :lable, :max_length
end

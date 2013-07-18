class CustomTable < ActiveRecord::Base
  has_many :custom_field
  attr_accessible :desc, :name
end

class AddValueTypeToCustomFields < ActiveRecord::Migration
  def change
    add_column :custom_fields, :value_type, :string
  end
end

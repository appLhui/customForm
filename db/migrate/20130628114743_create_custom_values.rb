class CreateCustomValues < ActiveRecord::Migration
  def change
    create_table :custom_values do |t|
      t.integer :custom_field_id
      t.string :value
      t.integer :form_id

      t.timestamps
    end
  end
end

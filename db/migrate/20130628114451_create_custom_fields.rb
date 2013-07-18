class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :lable
      t.integer :max_length
      t.boolean :is_required
      t.string :default_value
      t.integer :custom_table_id

      t.timestamps
    end
  end
end

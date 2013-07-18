class CreateCustomTables < ActiveRecord::Migration
  def change
    create_table :custom_tables do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end

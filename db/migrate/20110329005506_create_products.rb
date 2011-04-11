class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name, :null => false
      t.decimal :price, :scale => 2, :precision => 6, :default => 0
      t.text :description
      t.integer :number_of_pages, :default => 0
      t.boolean :available, :default => true, :null => false 

      t.timestamps
    end
    rename_column :table_name, :column_name, :new_column_name
  end

  def self.down
    rename_column :table_name, :new_column_name, :column_name
    drop_table :products
  end
end
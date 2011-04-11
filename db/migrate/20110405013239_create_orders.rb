class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :store_id
      t.datetime :generated_at
      t.string :document_type
      t.integer :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end

class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.string :contact_name
      t.string :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end

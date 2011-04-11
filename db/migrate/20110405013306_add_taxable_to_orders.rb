class AddTaxableToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :taxable, :boolean
  end

  def self.down
    remove_column :orders, :taxable
  end
end

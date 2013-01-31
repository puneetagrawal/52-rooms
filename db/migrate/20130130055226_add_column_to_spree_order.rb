class AddColumnToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :product_id, :integer
    add_column :spree_orders, :check_in_date, :date
    add_column :spree_orders, :check_ot_date, :date
    add_column :spree_orders, :quantity, :integer
    add_column :spree_orders, :f2r_hotel_inventory_item_id, :integer
  end
end

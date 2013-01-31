class AddMoreFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :supplier_name,   :string
    add_column :spree_products, :type_of_hotel,   :string
    add_column :spree_products, :type_of_holiday, :string
    add_column :spree_products, :checkin_time,    :time
    add_column :spree_products, :checkout_time,   :time
  end
end

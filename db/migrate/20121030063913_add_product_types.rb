class AddProductTypes < ActiveRecord::Migration
  def change
    add_column :spree_products, :type, :string, :dafault => "Hotel Listing"
  end
end

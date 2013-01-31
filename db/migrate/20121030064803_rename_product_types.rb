class RenameProductTypes < ActiveRecord::Migration

  def change
    rename_column :spree_products, :type, :product_type
  end   
  
end

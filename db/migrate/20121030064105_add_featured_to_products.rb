class AddFeaturedToProducts < ActiveRecord::Migration
  def change

    add_column :spree_products, :featured, :boolean

  end
end

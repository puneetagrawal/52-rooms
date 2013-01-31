class AddAmenitiesString < ActiveRecord::Migration
  def up
    add_column :spree_products, :amenities_html, :text
  end

  def down
    remove_column :spree_products, :amenities_html
  end
end

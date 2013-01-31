class AddFieldsToHotels < ActiveRecord::Migration
  def up
    change_table :spree_products do |t|
      
      # Location Fields
      t.string   :street_address
      t.string   :city
      t.string   :state
      t.string   :country
      t.integer  :pin_code
      
      # Map Fields
      t.float    :latitude
      t.float    :longitude
      t.integer  :zoom_level

      # HTML Fields
      t.text     :overview
      t.text     :location_and_attractions
      t.text     :rooms
      t.text     :reviews

      # Price fields
      t.integer  :striked_price
      t.integer  :sale_percent

      # Other fields for search
      t.string   :property_type
      t.string   :amenities
      t.integer  :star_rating

      # Flash sale fields
      t.datetime :flash_start_on
      t.datetime :flash_close_on

    end
  end
  
  def down
    remove_column :spree_products, :street_address
    remove_column :spree_products, :city
    remove_column :spree_products, :state
    remove_column :spree_products, :country
    remove_column :spree_products, :pin_code
    remove_column :spree_products, :latitude
    remove_column :spree_products, :longitude
    remove_column :spree_products, :overview
    remove_column :spree_products, :location_and_attractions
    remove_column :spree_products, :rooms
    remove_column :spree_products, :reviews
    remove_column :spree_products, :striked_price
    remove_column :spree_products, :sale_percent
    remove_column :spree_products, :property_type
    remove_column :spree_products, :amenities
    remove_column :spree_products, :star_rating
    remove_column :spree_products, :flash_start_on
    remove_column :spree_products, :flash_close_on
  end

end

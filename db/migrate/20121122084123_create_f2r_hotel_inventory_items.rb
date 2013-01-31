class CreateF2rHotelInventoryItems < ActiveRecord::Migration
  def change
    create_table :f2r_hotel_inventory_items do |t|
      t.integer :product_id
      t.integer :price
      t.integer :cost_price
      t.string  :room_type
      t.date    :available_from
      t.date    :available_to

      t.timestamps
    end
  end
end

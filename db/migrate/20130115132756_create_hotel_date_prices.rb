class CreateHotelDatePrices < ActiveRecord::Migration
  def change
    create_table :hotel_date_prices do |t|
      t.date    :date
      t.float   :price
      t.integer :f2r_hotel_inventory_item_id

      t.timestamps
    end
  end
end

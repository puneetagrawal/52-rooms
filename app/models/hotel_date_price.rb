class HotelDatePrice < ActiveRecord::Base
  attr_accessible :date, :price,:f2r_hotel_inventory_item_id
  belongs_to :f2r_hotel_inventory_item
end
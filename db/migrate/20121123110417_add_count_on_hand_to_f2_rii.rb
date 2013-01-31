class AddCountOnHandToF2Rii < ActiveRecord::Migration
  def change

    add_column :f2r_hotel_inventory_items, :count_on_hand, :integer

  end
end

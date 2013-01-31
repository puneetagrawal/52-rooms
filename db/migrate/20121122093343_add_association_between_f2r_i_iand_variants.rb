class AddAssociationBetweenF2rIIandVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :f2r_hotel_inventory_item_id, :integer
  end
end

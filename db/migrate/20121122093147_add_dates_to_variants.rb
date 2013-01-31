class AddDatesToVariants < ActiveRecord::Migration
  def change
    remove_column :spree_variants, :available_from
    rename_column :spree_variants, :available_to, :available_on
    change_column :spree_variants, :available_on, :date

  end
end

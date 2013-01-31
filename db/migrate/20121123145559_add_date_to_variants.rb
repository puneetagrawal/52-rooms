class AddDateToVariants < ActiveRecord::Migration
  def change

    add_column :spree_variants, :f2r_available_on, :date


  end
end

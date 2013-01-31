class AddDateRangeToVariants < ActiveRecord::Migration
  def change
    
    add_column :spree_variants, :available_from, :date
    add_column :spree_variants, :available_to,   :date

  end
end

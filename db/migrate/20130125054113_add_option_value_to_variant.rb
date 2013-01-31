class AddOptionValueToVariant < ActiveRecord::Migration
  def change
    add_column :spree_variants, :option_value_id, :integer
  end
end

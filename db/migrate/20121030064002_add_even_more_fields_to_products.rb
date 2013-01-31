class AddEvenMoreFieldsToProducts < ActiveRecord::Migration
  def change
    # Coupon Fields
    add_column :spree_products, :coupon_type,       :string
    add_column :spree_products, :coupon_cost_price, :integer
    add_column :spree_products, :coupon_sale_price, :string
    add_column :spree_products, :coupon_discount,   :string
    add_column :spree_products, :coupon_policies,   :text
    

  end
end

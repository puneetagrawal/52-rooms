class F2rHotelInventoryItem < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :spree_product
  has_many   :spree_variants
  has_many   :hotel_date_price
  after_save :create_or_update_variants

  attr_accessible :room_type, :price, :cost_price, :count_on_hand, :available_from, :available_to, :available_on, :f2r_hotel_inventory_item_id, :product_id

  validates :room_type,:count_on_hand , :presence => true 
  # validates_numericality_of :price, :greater_than => 0
  # validates_numericality_of :cost_price, :greater_than => 0
  validates_numericality_of :count_on_hand, :greater_than => 0
  validates_uniqueness_of :room_type, :scope => :product_id

  
  def create_or_update_variants
    # o = Spree::OptionType.find_by_name("Room Type")
    # inv = self
    # unless inv.available_from.blank? || inv.available_to.blank?
    #   (inv.available_from..inv.available_to).each do |d|
    #     v = Spree::Variant.find_by_f2r_hotel_inventory_item_id_and_f2r_available_on inv.id, d
    #     v ||= Spree::Variant.new
    #     v.f2r_hotel_inventory_item_id = inv.id
    #     v.product_id = inv.product_id
    #     v.option_values << Spree::OptionValue.find(room_type) if v.new_record?
    #     # v.option_values << Spree::OptionValue.find_by_name_and_presentation("date", d) if v.new_record?
    #     v.f2r_available_on = d
    #     v.price = inv.price
    #     v.on_hand = inv.count_on_hand
    #     v.cost_price = inv.cost_price
    #     v.save!
    #   end
    # end
  end

  def variants
    Spree::Variant.find_all_by_f2r_hotel_inventory_item_id(self.id)
  end

  def options_for_cal
    dates = []
    dates_in_ms = []
    variants.each do |v| 
      dates << v.f2r_available_on.strftime('%Y-%m-%d') if (v.count_on_hand > 0 && !v.deleted_at)
    end
    variants.each{|v| dates_in_ms << v.f2r_available_on.to_time.to_i*1000}
    return {:dates => dates}
  end
end

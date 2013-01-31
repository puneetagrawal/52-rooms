Spree::Variant.class_eval do
  before_create :check_date
  attr_accessible :available_on,:count_on_hand, :f2r_available_on, :f2r_hotel_inventory_item_id,:option_value_id, :price, :on_hand
  # after_update :index!
  belongs_to :f2r_hotel_inventory_item
  belongs_to :product
  
  # validations on price and count on hand
  # validates :price, :count_on_hand, :presence => true

  # validates_numericality_of :price, :greater_than => 0
  # validates_numericality_of :count_on_hand, :greater_than => 0
  
  
  # Variants hold actual search logic and inventory / availability / pricing info.
  
  # searchable do
  #   text :name, :city, :country
  #   boolean :is_active, :using => :is_active?
  #   string :name
  #   string :product_type
  #   string :city
  #   string :country
  #   string :star_rating
  #   string :amenities, :multiple => true
  #   # time   :available_from, :trie => true
  #   # time   :available_to, :trie => true
  #   integer :price
  #   # pull the product's taxon, and all its ancestors: this allows us to intersect the display with the current taxon's
  #   # children and allow the user to intuitively 'dig down' into the product heirarchy
  #   # root taxon is excluded: doesn't really allow for intuitive navigation
  #   integer :taxon_ids, :multiple => true, :references => Spree::Taxon do
  #     product.taxons.map { |t| t.self_and_ancestors.select { |tx| !tx.root? }.map(&:id) }.flatten(1).uniq
  #   end
  # end
  
  # Get static information from products
  [:city, :country, :star_rating, :amenities, :product_type].each do |meth|
    define_method meth do
      product.send meth
    end
  end

  
  def is_active?
    !deleted_at && count_on_hand > 0
  end

  def date_passed?
    return false if product.is_coupon?
    Date.today > f2r_available_on.to_date
  end

  def check_date
    if !self.f2r_available_on.blank? and self.f2r_available_on>=Date.today 
    product_variant= product.variants.where(:f2r_available_on=>self.f2r_available_on,
      :option_value_id=>self.option_value_id)
    if product_variant.blank?
      return true
    else 
      errors.add(:base,I18n.t('.error_message_date'))
      return false 
    end
  else
     errors.add(:base,I18n.t('.error_message_pastdate'))
  end

  end
    
  
  # def stock_on(date)
  #   self.on_hand
  # end

  # def stock_today
  #   self.on_hand
  # end
  
  # def availability_map
  #   range = available_from..available_to
  #   av_map = {}
  #   range.each do |date|
  #     av_map[date] = stock_on(date)
  #   end
  #   return av_map
  # end


  
  




end


Spree::Variant.instance_eval do
  
  
  def create_or_update_variants(var)

    # v = find_create_by_room_type_and_f2r_hotel_inventory_item_and_option_values_and_available_on var.hotel_inventory_item, var.option_values, v.available_on
    # unless v == var
    #   v = var
    # end

    v = Spree::Variant.new
    v = var
    v.save!
  end



end

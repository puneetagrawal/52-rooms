## Add instance methods
Spree::Product.class_eval do
  # has_one :coupon_active_date_range, :as => :rangeable, :class_name => Spree::DateRange
  # has_one :coupon_valid_date_range, :as => :rangeable, :class_name => Spree::DateRange
  # Constants
  PROPERTY_TYPES = ["Bed and Breakfast", "Extended Stay", "Home Stay", "Guest Stay"]
  AMENITIES      = ["Bar", "Business Center", "Coffee Shop", "Gym", "Internet Access", "Room Service", "Pool", "Restaurant", "24 Hour Check in", "Air Conditioning", "WiFi Access"]
  PRODUCT_TYPES  = ["Flash Sale", "Hotel Listing", "Coupon"]
  COUPON_TYPES   = ["Other", "Hotel", "Package", "FnB", "Flight"]
  before_save :set_listing_options, :fix_coupons
  after_update :index!
  

  has_many :f2r_hotel_inventory_items, :dependent => :destroy
  # has_many :variants,:dependent => :destroy

  serialize :amenities

  def index_variants
    variants.each { |v| v.index; }
  end

  def fix_coupons
    if is_coupon?
      available_on = Time.now
    end
  end

  # Accessible attrs
  tmp = [:street_address, :city, :state, :pin_code, :latitude, :longitude, :zoom_level, 
         :striked_price, :sale_percent, :flash_start_on, :flash_close_on, 
         :property_type, :amenities, :star_rating, :overview, :location_and_attractions,
         :rooms, :reviews, :amenities_html, :product_type, :coupon_type, :supplier_name, :country, 
         :type_of_hotel, :type_of_holiday, :checkin_time, :checkout_time,
         :coupon_cost_price, :coupon_discount, :coupon_policies, :featured,
         :available_from, :available_to, :f2r_hotel_inventory_items_attributes
        ].each do |attr|
    attr_accessible attr
  end
  
  # Nested Attrs
  accepts_nested_attributes_for :f2r_hotel_inventory_items, :allow_destroy => true, :reject_if => :all_blank
  # validates_presence_of :flash_start_on, :flash_close_on, :if => Proc.new{|p| p. is_flash_sale? && !p.new_record?}

  # Validations
  


  # Configure Sunspot
  searchable do
    text :name, :city, :country
    boolean :is_active, :using => :is_active?
    string  :name
    string  :product_type
    string  :city
    string  :country
    string  :star_rating
    string  :amenities, :multiple => true
    integer :price, :using => :starting_price
    integer :prices_array, :multiple => true
    integer :price_min, :using => :starting_price
    integer :price_max, :using => :ending_price
    time    :available_dates, :multiple => true, :trie => true
    time    :deleted_at
  end

  def flash_active?
    is_flash_sale? && flash_start_on < Date.today && flash_close_on > Date.today
  end

  def is_active?
    !deleted_at && (available_on && available_on <= Time.now)
  end

  def room_inventory
    f2r_hotel_inventory_items
  end

  def room_types_option_values
    x = []
    f2r_hotel_inventory_items.each{|f| x << f.room_type}
    return x
  end


  # validates_numericality_of :min_passengers_reqd, :max_passengers_reqd, :no_of_trips_on_mon, :no_of_trips_on_tue, :no_of_trips_on_wed, :no_of_trips_on_thu, :no_of_trips_on_fri, :no_of_trips_on_sat, :no_of_trips_on_sun, :zoom_level
  # validates_presence_of :level, :location
  # validates :price, :unless => false
  validates :product_type, :inclusion => {:in => PRODUCT_TYPES}
  # validates :coupon_type, :inclusion => {:in => COUPON_TYPES}, :unless => :new_record?
  # Check availability on a Day of the Week (dow param as 'mon', 'tue' etc)
#   def available_on_dow?(dow)
#     dow = dow.downcase
#     self.send("no_of_trips_on_#{dow}".to_sym) > 0
#   end

#   # This is for google maps
#   acts_as_gmappable :process_geocoding => false
#   def gmaps4rails_address
#     #{self.location}
#   end
  
#   def box_image
#     self.images[0] || false
#   end
# end

  PRODUCT_TYPES.each do |t|
    define_method "is_#{t.downcase.gsub(' ', '_')}?" do
      if self.product_type
        if new_record?
          return true
        else
          return self.product_type.upcase == t.upcase
        end
      else
        return false
      end
    end
  end

  COUPON_TYPES.each do |t|
    define_method "is_#{t.downcase.gsub(' ', '_')}_coupon?" do
      if self.is_coupon? && self.coupon_type
        return self.coupon_type.upcase == t.upcase
      else
        return false
      end
    end
  end


  def set_available_on
    if is_flash_sale?
      self.available_on == self.flash_start_on
    end
  end
    
  def set_listing_options
    unless self.product_type == PRODUCT_TYPES[2]
      o = Spree::OptionType.find_by_name("Room Type")
    else
      o = Spree::OptionType.find_by_name("Coupon Options")
    end
    option_types << o
  end
  
  def lowest_price_variant
    v = variants.order(:price => "ASC").limit(1).first
  end

  def highest_price_variant
    v = variants.order(:price => "DESC").limit(1).first 
  end


  def starting_price
    p = lowest_price_variant ? lowest_price_variant.price.to_i : 0
  end

  def ending_price
    p = highest_price_variant ? highest_price_variant.price.to_i : 0
  end

  def striked_price
    x = read_attribute(:sale_percent)
    p = starting_price
    sp = (p + (x/100.0)*p).to_i
  end

  def rebuild_index
    `rake sunspot:reindex`
  end


  def available_dates
    return [] if is_coupon?
    variants.map{|v| v.f2r_available_on}.uniq
  end

  def prices_array
    variants.map{|v| v.price}.uniq
  end

end

## Add class methods
Spree::Product.instance_eval do

  ## SCOPES
  def featured
    where(:featured => true)
  end

  def flash_sales
    where(:product_type => PRODUCT_TYPES[0])
  end

  def hotel_listings
    where(:product_type => PRODUCT_TYPES[1])
  end


  def coupons
    where(:product_type => PRODUCT_TYPES[2])
  end


  def active_hotel_listings
    hotel_listings.where('available_on < ?', Date.today)
  end

  def active_flash_sales
    flash_sales.where('flash_close_on > ?', Date.today).where('available_on < ?', Date.today)
  end



  ## Utilities
  def refresh_images
    Spree::Image.all.each{|i| i.attachment.reprocess!}
  end

end

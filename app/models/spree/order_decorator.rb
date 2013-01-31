Spree::Order.class_eval do
  
  attr_accessible :booking_date, :check_in_date, :check_out_date, :f2r_hotel_inventory_item_id,
   :product_id, :quantity, :email, :line_items 
  belongs_to :spree_line_item

  checkout_flow do
    go_to_state :address, :if => lambda { |order| order.payment_required? }
    go_to_state :payment, :if => lambda { |order| order.payment_required? }
    go_to_state :confirm, :if => lambda { |order| order.confirmation_required? }
    go_to_state :complete
  end

  state_machine do
    after_transition :from => :cart, :to => :address do |order|
      order.next
    end
  end


  # def add_variant(variant, quantity = 1, currency = nil)
  #     current_item = find_line_item_by_variant(variant)
  #     if current_item
  #       current_item.quantity += quantity
  #       current_item.currency = currency unless currency.nil?
  #       current_item.save
  #     else
  #       current_item = Spree::LineItem.new(:quantity => quantity)
  #       current_item.variant = variant
  #       if currency
  #         current_item.currency = currency unless currency.nil?
  #         current_item.price    = variant.price_in(currency).amount
  #       else
  #         current_item.price    = variant.price
  #       end
  #       self.line_items << current_item
  #     end

  #     self.reload
  #     current_item
  #   end
  

end




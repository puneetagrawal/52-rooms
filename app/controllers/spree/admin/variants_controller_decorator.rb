module Spree
  module Admin
   VariantsController.class_eval do
  
	# before_filter [:create_before,:new_before]
	def create
    # invoke_callbacks(:create, :before) 
    option_values = params[:new_variant] 
    option_id=""
    option_values.each_value {|id|
      option_id=id
    }      
    prod=Product.find_by_permalink(params[:product_id])
    if prod.product_type=='Coupon'
      super
    else

    base_prod=prod.id
    f2r_inventory_item=prod.f2r_hotel_inventory_items.where(:room_type=>option_id).first
    variant=Spree::Variant.create :product_id => base_prod,
    :f2r_hotel_inventory_item_id=>f2r_inventory_item.id,
    :count_on_hand=>f2r_inventory_item.count_on_hand,
    :f2r_available_on=>"#{params[:variant]['available_on(1i)']}-#{params[:variant]['available_on(2i)']}-#{params[:variant]['available_on(3i)']}",
    :price=>params[:variant]["price"],
    :cost_price=>params[:variant]["cost_price"] ,
    :option_value_id=>option_id
    
    if !variant.blank? and !variant.errors.any?      
      variant.option_values << OptionValue.find(option_id)     
      flash.notice = flash_message_for(variant, :successfully_created)
      respond_with(variant) do |format|
        format.html { redirect_to location_after_save }
        format.js   { render :layout => false }
      end      
    else      
      set_flash_message(variant)     
      respond_with(variant)
    end

  end
  end
	 # protected

  #       def create_before
  #         option_values = params[:new_variant] 

  #         option_values.each_value {|id|           
  #           @object.option_values << OptionValue.find(id)
  #            # @object.f2r_hotel_inventory_item_id=id
  #         }          
  #         # base_prod=Product.find_by_permalink(params[:product_id]).id         
  #         # @object.f2r_available_on="#{params[:variant]['available_on(1i)']}-#{params[:variant]['available_on(2i)']}-#{params[:variant]['available_on(3i)']}"
  #         # @object.product_id=base_prod
  #         # @object.save
  #       end
  #          def new_before
  #         @object.attributes = @object.product.master.attributes.except('id', 'created_at', 'deleted_at',
  #                                                                       'sku', 'is_master', 'count_on_hand')

  #       end

  def set_flash_message(object)
     unless object.errors.full_messages.empty?
       error_message=''
       object.errors.full_messages.each do |msg|
         error_message += "<div>#{msg}</div>"
       end
       flash[:error]  = error_message.html_safe
     end
  end


end
end
end

Spree::ProductsController.class_eval do
  def index
    # After much trial and error, I have decided to let go of spree's default search and implement my own based on sunspot.
    @current = 'products'
    @search = Sunspot.search(Spree::Product) do
      keywords params[:keywords]
      facet :city
      facet :country
      facet :star_rating
      with :is_active, true
      facet :product_type  
      with  :deleted_at,nil
      if params[:al].present? && !params[:ah].present?
        with :available_dates, Date.parse(params[:al]).to_time
      end
      if params[:ah].present? && !params[:al].present?
        with :available_dates, Date.parse(params[:ah]).to_time
      end
      if params[:ah].present? && params[:al].present?
        (Date.parse(params[:al])..Date.parse(params[:ah])).each do |d|
          with :available_dates, d.to_time
        end
      end
      if params[:pl].present? && !params[:ph].present?
        with(:price_min).greater_than_or_equal_to(params[:pl].to_i)
      end
      if params[:ph].present? && !params[:pl].present?
        with(:price_max).less_than_or_equal_to(params[:ph].to_i)
      end
      if params[:ph].present? && params[:pl].present?
        with(:price_min).greater_than_or_equal_to(params[:pl].to_i)
        with(:price_max).less_than_or_equal_to(params[:ph].to_i)
      end
      if params[:cn].present?
        with :country, params[:cn]
      end
      if params[:ct].present?
        with :city, params[:ct]
      end
      if params[:nm].present?
        with :name, params[:nm]
      end
      if params[:sort].present?
        order_by params[:sort].downcase, :asc
      end
      group :city do
        if params[:cn].present? && !params[:ct].present?
          limit 5          
        else
          if params[:ct].present?
            limit 100
          else
            limit 2
          end
        end
      end
      if params[:sort].present?
        if params[:sort] == 'Price'
          order_by :price
        end
      end
    end
    @products = @search.results

    render :index
  end

  def dest
    @current = 'destinations'
    @search = Sunspot.search(Spree::Product) do
      facet :city
      facet :country
      facet :star_rating
      with :is_active, true
      facet :product_type
      if params[:al].present? && !params[:ah].present?
        with :available_dates, Date.parse(params[:al]).to_time
      end
      if params[:ah].present? && !params[:al].present?
        with :available_dates, Date.parse(params[:ah]).to_time
      end
      if params[:ah].present? && params[:al].present?
        (Date.parse(params[:al])..Date.parse(params[:ah])).each do |d|
          with :available_dates, d.to_time
        end
      end
      if params[:pl].present? && !params[:ph].present?
        with(:price_min).greater_than_or_equal_to(params[:pl].to_i)
      end
      if params[:ph].present? && !params[:pl].present?
        with(:price_max).less_than_or_equal_to(params[:ph].to_i)
      end
      if params[:ph].present? && params[:pl].present?
        with(:price_min).greater_than_or_equal_to(params[:pl].to_i)
        with(:price_max).less_than_or_equal_to(params[:ph].to_i)
      end
      if params[:cn].present?
        with :country, params[:cn]
      end
      if params[:ct].present?
        with :city, params[:ct]
      end
      if params[:nm].present?
        with :name, params[:nm]
      end
      if params[:sort].present?
        order_by params[:sort].downcase, :asc
      end
      group :city do
        if params[:cn].present? && !params[:ct].present?
          limit 5          
        else
          if params[:ct].present?
            limit 100
          else
            limit 2
          end
        end
      end
    end
    @products = @search.results
    render :index
  end

#  def calculate_subtotal      
    
#     check_date=(params[:check_out].to_date-params[:check_in].to_date).to_i + 1

#     id_array = Array.new
#     room_type_array=Array.new
#     room_type_array_name=Array.new
#     room_s=Array.new
#     price_array=Array.new                                                                                                                                                                                                                    
#     room_avail=true
#     price=0.00;  
#     inventory = Spree::Variant.where("product_id=? and f2r_available_on >= ? and f2r_available_on <= ?",params[:product_id],params[:check_in].to_date,params[:check_out].to_date)  
    
#     inventory.each_with_index do |room_type, i|
#       room_avail=true
#       avail_invent=Array.new
#      if !id_array.include?(room_type.option_values.first.id)
#        id_array << room_type.option_values.first.id
#        (params[:check_in].to_date..params[:check_out].to_date).each_with_index do |date_show,i|
#       invent=inventory.where(:f2r_hotel_inventory_item_id=> room_type.option_values.first.id).where(:f2r_available_on=>date_show).first
#       if invent.blank?
#         room_avail=false
#       else  
#         avail_invent<<invent
#       end
     
#     end
     
#        if room_avail and !avail_invent.blank?
#         price=0.00;  
#         avail_invent.each do|r|         
#           room_type_array << r.id                                                                         
#           room_type_array_name<<r.option_values.first.name
#           price= price + r.price
#           room_s<<r.option_values.first.id   
#         end        
#         price_array<<price
#       end
#     end  
#   end

#   # price=inventory.map{|p| price = price + p.price}
#   respond_to do |format|
#     format.js {render :json=>[:price=>price_array,:room_id=>room_type_array.uniq,:room_name=>room_type_array_name.uniq,:days=>check_date.to_i,:room_type=>room_s.uniq]}
#   end
# end



def calculate_subtotal     
    @room_data_array=Array.new
    @check_date=(params[:check_out].to_date-params[:check_in].to_date).to_i
    id_array = Array.new   
    inventory = Spree::Variant.where("product_id=? and f2r_available_on >= ? and f2r_available_on <= ? and deleted_at IS NULL and count_on_hand > 0",params[:product_id],params[:check_in].to_date,params[:check_out].to_date)    # Rohit
    
    inventory.each_with_index do |room_type, i|
      room_avail=true
      avail_invent=Array.new     
      if !id_array.include?(room_type.option_values.first.id)
       id_array << room_type.option_values.first.id
       (params[:check_in].to_date..params[:check_out].to_date).each_with_index do |date_show,i|
         invent=inventory.where(:option_value_id=> room_type.option_values.first.id ,:f2r_available_on=>date_show).first
         # invent=Spree::Variant.find(room_type.id).option_values.where(:option_value_id=>room_type.option_values.first.id).where(:f2r_available_on=>date_show).first
         if invent.blank?
           room_avail=false
         else  
           avail_invent<<invent
         end        
      end

      if room_avail and !avail_invent.blank?
        price=0.00; 
        count_on_hand=0; 
        last_index = 0;
        #avail_invent.pop
        #(params[:check_in].to_date..params[:check_out].to_date - 1.day).each do|r|
        avail_invent.each do|r|
          last_index = last_index + 1;                
          if (last_index != avail_invent.length)
            price=price + r.price; 
          end
          
          if (count_on_hand == 0)                     
            count_on_hand=r.count_on_hand;
          elsif (count_on_hand < r.count_on_hand)
          else
            count_on_hand = r.count_on_hand;   
          end  
          # count_on_hand=count_on_hand + r.count_on_hand
        end  
        # avail_invent.pop
        @room_data_array<< {:price=>price,:room_name=>room_type.option_values.first.name,
            :room_id=>room_type.id,:room_type_id=>room_type.option_values.first.id, :available=>count_on_hand  }      # Rohit        
      end
    end  
  end
 
   @room_data_array=@room_data_array.sort_by { |hsh| hsh[:price] }
 
 
end
  
end

# -*- coding: utf-8 -*-
module ApplicationHelper

  def number_to_indian_currency(number, html=true)
    txt = html ? content_tag(:span, 'Rs.', :class => :WebRupee) : 'Rs.'
    "#{txt} #{number.to_s.gsub(/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/, "\\1,")}".html_safe
  end


  def rating_stars_tag(stars)
    stars ||= rand(5)
    full = ""
    empty = ""
    stars.times do
      full  += "<span class='full'>&#9733;</span>"
    end
    (5-stars).times do
      empty +=  "<span class='empty'>&#9733;</span>"
    end
    "<span class='rating'>#{full}#{empty}</span>".html_safe
  end

  def address_tag(prod)
    "<div class='address'>#{@product.street_address}, #{@product.city}, #{@product.state}</div>".html_safe
  end


  alias :number_to_currency :number_to_indian_currency


  def pretty_star_rating(stars)
    stars = stars.to_i
    q = "<div class = 'star_rating'>"
    q += "<span class = 'full'>"
    stars.times do
      q += "★"
    end
    q += "</span><span class='empty'>"
    (5-stars).times do
      q += "☆"
    end
    q += "</span> </div>"
    q.html_safe
  end


  def link_to_add_filter(facet_row_name, facet_row_value, params, class_name="add_filter")
    r = {}
    r[:value] = facet_row_name
    r[:count] = facet_row_value
    url = request.url
    text = "#{r[:value]} <span class='small'>(#{r[:count]})</span>".html_safe
    url += '?' unless url.split('?').count > 1 
    params.each do |k, v|
      url += "&#{k}=#{v.gsub(' ', '+')}"
    end
    link_to text, url, :class => class_name
  end

  def link_to_remove_filter(text, params, class_name="remove_filter")
    url = request.url
    url += '?' unless url.split('?').count > 1 
    params.each do |k, v|
      url = url.gsub("&#{k}=", '').gsub("#{v.gsub(' ', '+')}", '')
    end
    link_to text, url, :class => class_name
  end

  def link_to_sort(name)
    text = name
    url = request.url
    class_name = request.url.match("&sort=#{name}") ? 'active' : ''
    unless name == "Relevance"
      new_url = url.gsub(/&sort=[A-Za-z]*/, '') + "&sort=#{name}"
    else
      class_name = 'active' if params[:sort] == "score"
      new_url = url.gsub(/&sort=[A-Za-z]*/, '') + "&sort=score"
    end
    link_to text, new_url, :class => class_name
  end


  ## For Availability
  def availability_calendar_tag(options=[])
    
  end

  def calender_date_format(product)
    #{:price=>['$1','$2','$3','$4','$5','$5','$5','$5'],
    #:date=>["01/14/2013","01/15/2013","01/16/2013","01/17/2013","01/18/2013","01/19/2013","01/20/2013","01/21/2013"]}
    #{:price=>[455, 65, 89, 4545], :date=>["01/01/2013", "01/02/2013", "01/03/2013", "01/04/2013"]}   
  
    calander_date = Hash.new
    price = Array.new
    date = Array.new
    product.variants.each_with_index do |avail_room, i|

     if !avail_room.f2r_available_on.blank? and !date.include?(avail_room.f2r_available_on.strftime('%m/%d/%Y'))
       avail_room=(product.variants.where('f2r_available_on=? and deleted_at IS NULL and count_on_hand > 0 ',avail_room.f2r_available_on).order("price ASC").limit(1).first())
      
      unless avail_room.blank?
       price << "$#{avail_room.price}"
      
      # if !avail_room.f2r_available_on.blank?
        date << avail_room.f2r_available_on.strftime('%m/%d/%Y')
      # end
      end 
    end
    end

    # product.room_inventory.each_with_index do |room_type, i|
    #   if !date.include?(room_type.available_from.strftime('%m/%d/%Y'))
    #    room_type=(product.room_inventory.where('available_from=?',room_type.available_from).order("price ASC").limit(1).first())
      
     
    #   price << "$#{room_type.price}"
    #   date << room_type.available_from.strftime('%m/%d/%Y')
    # end
    # end
    calander_date = {:price=>price, :date=>date}  
  end
end


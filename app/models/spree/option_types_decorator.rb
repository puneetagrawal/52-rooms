Spree::OptionType.instance_eval do

  def room_type_option_type
    Spree::OptionType.find_by_name("Room Type")
  end

  def room_type_option_values
    room_type_option_type.option_values
  end

  def room_type_option_value(room_type_name)
    room_type_option_type.option_values.select{|x| x==room_type_name}.first
  end

end

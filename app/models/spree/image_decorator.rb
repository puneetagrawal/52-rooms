Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :featured => "960x500#",
    :row => "928x300#",
    :mini => '48x48#', # thumbs under image
    :small => '100x100#', # images on category view
    :product => '400x250#', # full product image
    :slider => '960x500#',  # light box image
    :slider_thumb => '120x80#'  # light box image
  }
end

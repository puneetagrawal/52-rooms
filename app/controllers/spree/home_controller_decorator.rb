Spree::HomeController.class_eval do
  helper 'spree/products'
  respond_to :html
  
  def home_page
    @searcher = Spree::Config.searcher_class.new(params)
    @products = Spree::Product.active.order(:created_at => "DESC").limit(5)
    @featured = Spree::Product.active.featured.order(:created_at => "DESC").limit(5)
    @flash_sales = Spree::Product.active_flash_sales.flash_sales.where(:deleted_at=>nil).order(:created_at => "DESC").limit(5)
    @coupons = Spree::Product.coupons.limit(5).active
  end

  def about_us
    render 'pages/about-us'
  end
  def contact_us
    render 'pages/contact-us'
  end
end

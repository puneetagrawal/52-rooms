namespace :f2r do

  @names_prefixes = ["The Grand", "Hotel", "Sea View", "The Landmark", "Holiday Inn", "Leela", "The Taj", "Hyattt Regency", "Marriott", "Shangri La", "Renaissance", "Park Plaza", "The Plaza", "Paradise Grand"]


  desc "Seed data for 52r"

  task :seed_option_dates => :environment do
    o = Spree::OptionType.create!(:name => "Available on", :presentation => "When is this variant for")
    (Date.today..(Date.today+2.years)).each do |date|
      o.option_values.build({:name => "date", :presentation => date})
    end
    o.save!
  end

  task :seed_coupon_options => :environment do
    o = Spree::OptionType.create!(:name => "Coupon Options", :presentation => "Coupon specific options")
    [5, 10, 15, 20, 25, 30].each do |date|
      o.option_values.build({:name => "duration (days)", :presentation => date})
    end
    o.save!
  end

  task :create_option_types => :environment do 
    #Create requisite option type and option values
    puts "Creating option types now..."
    o = Spree::OptionType.create!(:name => "Room Type", :presentation => "Room / Bed Type")
    ['Honeymoon Suite', 'Single Bed', 'Queen Sized Bed', 'Double Bed', 'Twin Sharing', 'Triple Sharing', 'Superior', 'Deluxe', 'Executive Suite', 'Sea View', 'Superior Room', 'Grand Deluxe room'].each do |type|
      o.option_values.build({:name => type.titleize, :presentation => type.titleize})
    end
    o.save!

  end

  @locs = {"United Kingdom" => ["London", "Trentbridge"], "India" => ["Mumbai", "New Delhi", "Kolkata", "Chennai", "Bengaluru", "Pune", "Lucknow", "Simla", "Darjeeling"], "Australia" => ["Sydney", "Melbourne", "Canberra", "Perth"], "USA" => ["New York", "Los Angeles", "San Francisco"], "China" => ["Beijing", "Shanghai"], "France" => ["Paris"], "Spain" => ["Madrid"], "Italy" => ["Rome"]}
  task :create_hotel_listings => :environment do 
    num_times = 5
    num_times.times do
      p = Spree::Product.new
      p.product_type = Spree::Product::PRODUCT_TYPES[1]
      p.country = @locs.keys.sample
      p.city = @locs[p.country].sample
      @np = @names_prefixes.sample
      p.name = (@np + ", " + p.city).titleize
      puts "Creating hotel - #{p.name}"
      p.street_address = Faker::Address.street_address
      p.latitude = Faker::Address.latitude
      p.longitude = Faker::Address.longitude
      p.zoom_level = rand(5)+1
      p.property_type = Spree::Product::PRODUCT_TYPES.sample
      p.available_on = Date.today
      p.price = 0
      p.star_rating = rand(2) + 4
      p.featured = (rand(5) > 1) 
      p.amenities = Spree::Product::AMENITIES.sample(rand(Spree::Product::AMENITIES.length + 1))
      p.supplier_name = @np
      ## Add Images
      images_dir = Rails.root + "app/assets/images/hotels/ext/*.jpg"
      puts "Adding Images Now"
      path_arr = Dir.glob(images_dir).entries
      i = Spree::Image.create!( { :attachment => File.open(path_arr.sample), :viewable => p }, :without_protection => true )
      p.images << i
      puts "Adding room images"
      images_dir = Rails.root + "app/assets/images/hotels/int/*.jpg"
      (rand(2) + 1).times do
        path_arr = Dir.glob(images_dir).entries
        i = Spree::Image.create!( { :attachment => File.open(path_arr.sample), :viewable => p }, :without_protection => true )
        p.images << i
      end
      
      ## Add HTML Fields
      [:overview, :location_and_attractions, :rooms, :reviews, :amenities_html].each do |key|
        q = "<p>"
        q += Faker::Lorem.paragraphs(rand(10)+1).join("</p><p>")
        q += "</p>"
        p.send("#{key}=", q)
      end
      
      
      ## Randomly create some variants
      o = Spree::OptionType.find_by_name("Room Type")
      p.option_types << o
      p.save
      puts "Creating variants"
      o.option_values.sample(rand(5) + 1).each do |ov|
        v = Spree::Variant.new
        ot = ov
        v.option_values << ot
        v.price = rand(30)*100
        v.product = p
        v.save!
        p.variants << v
        p.save!
      end
      unless p.save!
        puts p.errors
      end
    end
    puts
  end



  task :create_flash_sales => :environment do 
    num_times = 10
    num_times.times do
      p = Spree::Product.new
      p.product_type = Spree::Product::PRODUCT_TYPES[0]
      p.country = @locs.keys.sample
      p.city = @locs[p.country].sample
      @np = @names_prefixes.sample
      p.name = (@np + ", " + p.city).titleize
      puts "Creating hotel - #{p.name}"
      p.street_address = Faker::Address.street_address
      p.latitude = Faker::Address.latitude
      p.longitude = Faker::Address.longitude
      p.zoom_level = rand(5)+1
      p.property_type = Spree::Product::PRODUCT_TYPES.sample
      p.available_on = Date.today
      p.price = 0
      p.star_rating = rand(2) + 4
      p.featured = (rand(5) > 1) 
      p.amenities = Spree::Product::AMENITIES.sample(rand(Spree::Product::AMENITIES.length + 1))
      p.sale_percent = (rand(8) + 1)*5
      p.flash_start_on = Date.today
      p.flash_close_on = Date.today + rand(30).days
      p.supplier_name = @np
      ## Add Images
      images_dir = Rails.root + "app/assets/images/hotels/ext/*.jpg"
      puts "Adding Images Now"
      path_arr = Dir.glob(images_dir).entries
      i = Spree::Image.create!( { :attachment => File.open(path_arr.sample), :viewable => p }, :without_protection => true )
      p.images << i
      puts "Adding room images"
      images_dir = Rails.root + "app/assets/images/hotels/int/*.jpg"
      (rand(2) + 1).times do
        path_arr = Dir.glob(images_dir).entries
        i = Spree::Image.create!( { :attachment => File.open(path_arr.sample), :viewable => p }, :without_protection => true )
        p.images << i
      end
      
      ## Add HTML Fields
      [:overview, :location_and_attractions, :rooms, :reviews, :amenities_html].each do |key|
        q = "<p>"
        q += Faker::Lorem.paragraphs(rand(10)+1).join("</p><p>")
        q += "</p>"
        p.send("#{key}=", q)
      end
      
      
      ## Randomly create some variants
      o = Spree::OptionType.find_by_name("Room Type")
      p.option_types << o
      p.save!
      puts "Creating variants"
      o.option_values.sample(rand(5) + 1).each do |ov|
        v = Spree::Variant.new
        ot = ov
        v.option_values << ot
        v.price = rand(30)*100
        v.product = p
        v.available_from = Date.today + rand(10).days
        v.available_to = v.available_from + rand(10).days
        v.on_hand = rand(20)
        v.save
        p.variants << v
        unless p.save!
         puts p.errors.to_json
        end
      end
      unless p.save!
        puts p.errors.to_json
      end
    end
    puts
  end


end

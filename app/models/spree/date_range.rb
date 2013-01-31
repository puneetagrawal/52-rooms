class Spree::DateRange < ActiveRecord::Base
  belongs_to :rangeable, :polymorphic => true
  attr_accessible :starts_at, :ends_at
end


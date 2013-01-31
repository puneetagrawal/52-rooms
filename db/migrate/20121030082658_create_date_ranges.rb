class CreateDateRanges < ActiveRecord::Migration
  def change
    create_table :spree_date_ranges do |t|
      t.string :rangeable_type 
      t.integer :rangeable_id
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end

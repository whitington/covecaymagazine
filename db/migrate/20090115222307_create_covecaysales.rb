class CreateCovecaysales < ActiveRecord::Migration
  def self.up
    create_table :covecaysales do |t|
      t.string :parcel_number
      t.string :property_address
      t.string :condo_name
      t.string :sale_date
      t.integer :sale_price
      t.integer :year_built
      t.integer :sq_ft
      t.integer :land_use_id
      t.integer :subdivision_id
      t.string :cc_village
      t.string :cc_building
      t.string :cc_unit
      t.integer :sale_month
      t.integer :sale_year

      t.timestamps
    end
  end

  def self.down
    drop_table :covecaysales
  end
end

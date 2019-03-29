class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.integer :sf
      t.integer :baths
      t.integer :rooms
      t.string :description
      t.integer :price
      t.integer :building_id
    end
  end
end

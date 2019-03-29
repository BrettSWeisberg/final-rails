class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :units
      t.string :description
      t.string :address
    end
  end
end

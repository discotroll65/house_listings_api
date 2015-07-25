class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :street, null: false
      t.integer :status_id, null: false
      t.integer :price, null: false
      t.integer :bedroom, null: false
      t.integer :bathrooms, null: false
      t.integer :sq_ft, null: false
      t.integer :lat, null: false
      t.integer :lng, null: false

      t.timestamps null: false
    end

    add_index :houses, :status_id
    add_index :houses, [:lat, :lng], unique: true
    add_index :houses, :price
    add_index :houses, :bedroom
    add_index :houses, :bathrooms
    add_index :houses, :sq_ft
  end
end

class ChangeBedroomToBedrooms < ActiveRecord::Migration
  def change
    rename_column :houses, :bedroom, :bedrooms
  end
end

class ChangeLatLongToDecimal < ActiveRecord::Migration
  def change
    change_column :houses, :lat, :decimal
    change_column :houses, :lng, :decimal
  end
end

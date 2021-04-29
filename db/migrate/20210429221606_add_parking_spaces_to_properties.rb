class AddParkingSpacesToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :parking_spaces, :integer
  end
end

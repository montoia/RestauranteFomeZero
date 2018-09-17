class AddRestaurantIdToPlates < ActiveRecord::Migration[5.2]
  def change
    add_column :plates, :restaurant_id, :integer
  end
end

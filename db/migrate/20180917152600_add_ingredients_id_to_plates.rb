class AddIngredientsIdToPlates < ActiveRecord::Migration[5.2]
  def change
    add_column :plates, :ingredient_id, :integer
  end
end

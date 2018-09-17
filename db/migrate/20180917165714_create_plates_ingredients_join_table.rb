class CreatePlatesIngredientsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :plates, :ingredients do |t|
      t.belongs_to :plate, index: true, foreign_key: true
      t.belongs_to :ingredient, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

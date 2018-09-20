class CreatePlates < ActiveRecord::Migration[5.2]
  def change
    create_table :plates do |t|
      t.string :descricao
      t.decimal :preco, precision: 10, scale: 2
      t.time :tempopreparo

      t.timestamps
    end
  end
end

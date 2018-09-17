class Plate < ApplicationRecord
  validates_presence_of :descricao

  belongs_to :restaurant
  belongs_to :ingredient
end

class Ingredient < ApplicationRecord
  validates_presence_of :descricao

  has_and_belongs_to_many :plate
end

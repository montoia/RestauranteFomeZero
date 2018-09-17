class Plate < ApplicationRecord
  validates_presence_of :descricao

  belongs_to :restaurant
  has_and_belongs_to_many :ingredients
end

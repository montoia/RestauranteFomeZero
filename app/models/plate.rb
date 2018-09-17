class Plate < ApplicationRecord
  validates_presence_of :descricao

  belongs_to :restaurant
  has_many :ingredients
end

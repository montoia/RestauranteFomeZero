class Restaurant < ApplicationRecord
  validates_presence_of :nome, :endereco, :telefone

  has_many :plate
end

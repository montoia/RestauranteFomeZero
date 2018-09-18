class Plate < ApplicationRecord
  validates_presence_of :descricao

  belongs_to :restaurant
  has_and_belongs_to_many :ingredients

  #scope :recents, -> {where('created_at > ?', (Time.now.beginning_of_day - 9.days))}
end

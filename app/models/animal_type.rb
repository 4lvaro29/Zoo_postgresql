class AnimalType < ApplicationRecord
  has_many :animals, dependent: :destroy
  validates :name, presence: true
end

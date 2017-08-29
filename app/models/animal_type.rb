class AnimalType < ApplicationRecord
  has_many :animal, dependent: :destroy
  validates :name, presence: true
end

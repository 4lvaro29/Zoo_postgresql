class Animal < ApplicationRecord
  belongs_to :animal_type
  scope :changos, -> {where(animal_type: AnimalType.find_by(name:"Chango"))}
  scope :tipo_animal, -> (tipo) {where(animal_type: AnimalType.find_by(name: tipo))}
  scope :ultimos, -> {last(5)}


  def self.changos2
    where(animal_type: AnimalType.find_by(name:"Chango"))
  end

  def self.tipo(num)
    where(animal_type: AnimalType.find_by(name: num))
  end

  def self.ultimos
    last(5)
  end

  def self.trae(num)
    last(num)
  end

end

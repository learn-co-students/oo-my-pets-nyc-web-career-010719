require_relative './cat'
require_relative './dog'
require_relative './fish'

class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    pet_fish = Fish.new(fish_name)
    self.pets[:fishes] << pet_fish
  end

  def buy_cat(cat_name)
    pet_cat = Cat.new(cat_name)
    self.pets[:cats] << pet_cat
  end

  def buy_dog(dog_name)
    pet_dog = Dog.new(dog_name)
    self.pets[:dogs] << pet_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end

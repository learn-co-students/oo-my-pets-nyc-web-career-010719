require 'pry'
require_relative './fish.rb'
require_relative './dog.rb'
require_relative './cat.rb'

class Owner

  attr_reader :species
  attr_accessor :name, :mood, :pets

  @@all = []

  def initialize(name, species="human", mood="nervous")
    @name = name
    @species = species
    @mood = mood
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def change_mood(pet_array, new_mood)
    @pets[pet_array].each { | pet | pet.mood = new_mood }
  end

  def walk_dogs
    change_mood(:dogs, "happy")
  end

  def play_with_cats
    change_mood(:cats, "happy")
  end

  def feed_fish
    change_mood(:fishes, "happy")
  end

  def sell_pets
    @pets.each do | pet_type, pet_array |
      pet_array.each do | pet |
        pet.mood = "nervous"
      end
      pet_array.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end


require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets, :mood

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}

  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.size
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |pet, attr|
      attr.each do |x|
        x.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    binding.pry
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end

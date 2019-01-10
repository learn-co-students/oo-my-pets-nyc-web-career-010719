require 'pry'
require_relative './cat'
require_relative './dog'
require_relative './fish'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].map do |each_dog|
      dog = each_dog
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].map do |each_cat|
      cat = each_cat
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].map do |each_fish|
      fish = each_fish
      fish.mood = "happy"
    end
  end

  def sell_pets
    # binding.pry
    @pets.each do |type, pet|
      pet.each do |animal|
        animal.mood = "nervous"
      end
      pets[type] = []
    end
  end

  def list_pets

    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."

  end

  #class methods go below here -----
  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end
  #end of the class methods -----


end

# binding.pry

require_relative './cat'
require_relative './dog'
require_relative './fish'
require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []
  @@count = 0

  def initialize(name)
     @pets = {
       fishes:[],
       cats:[],
       dogs:[]
     }
     @name = name
     @species = "human"

     @@owners << self
     @@count += 1
  end

  def buy_cat(name)
    # make new instance of pet
    cat = Cat.new(name)
    # add pet to @pets hash
    @pets[:cats] << cat
  end

  def buy_fish(name)
    # make new instance of pet
    fish = Fish.new(name)
    # add pet to @pets hash
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    # make new instance of pet
    dog = Dog.new(name)
    # add pet to @pets hash
    @pets[:dogs] << dog
  end

  def play_with_cats
    self.pets[:cats].map do |cat|
      #binding.pry
      cat.mood = "happy"
    end
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      #binding.pry
      dog.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].map do |fish|
      #binding.pry
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.map do |type, pets|
      #binding.pry
      pets.map do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    cats = pets[:cats].size
    dogs = pets[:dogs].size
    fishes = pets[:fishes].size
    return "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
     @@owners
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end



end

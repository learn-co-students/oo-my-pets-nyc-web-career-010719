require 'pry'
require_relative './dog.rb'
require_relative './cat.rb'
require_relative './fish.rb'
class Owner

  attr_accessor :pets, :name, :dog, :cat, :fish
  attr_reader :species

@@all = []

def self.all
@@all
end

def initialize(pets, species="human")
  @pets = {fishes: [], cats: [], dogs: []}
  @species = species
  @@all << self
end

def say_species
  "I am a #{species}."
end

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog
end

def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end

def buy_fish(name)
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
end

#need to access the dog and alter their mood
def walk_dogs
  @pets[:dogs].each do |dog|
  dog.mood = "happy"
end
end


def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets[:dogs].each do |dog|
    dog.mood = "nervous"
  end
  @pets[:cats].each do |cat|
    cat.mood = "nervous"
  end
  @pets[:fishes].each do |fish|
    fish.mood = "nervous"
  end
  @pets = {fishes: [], cats: [], dogs: []}
end

def list_pets
  dog_count = @pets[:dogs].length
  cat_count = @pets[:cats].length
  fish_count = @pets[:fishes].length
  "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
end

def self.count
  count = @@all.length
end

def self.reset_all
  @@all = []
end


end #end of class

require 'pry'
require_relative './fish'
require_relative './cat'
require_relative './dog'

class Owner
  # code goes here
attr_accessor :pets, :name
attr_reader :species

  @@all = []

  @@count = 0

  def self.all
  @@all
  end

    def self.count
      @@count
    end

    def self.reset_all
      if @@count
        @@all = []
        @@count = 0
      end
    end

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = 'human'
    @name = name
    # @@count += 1
    @@all << self
@@count += 1
    # binding.pry
  end

  def species
    @species
  end


  def say_species
    "I am a #{@species}."

  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    # pets[:fishes][0] = name

  end

    def buy_dog(name)
      @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
  @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    pets.each do |pet, attributes|
      attributes.each do |attribute|
        if attribute.mood
          attribute.mood = "happy"
        end
      end
    end
  end


  def play_with_cats
    pets.each do |pet, attributes|
      attributes.each do |attribute|
        if attribute.mood
          attribute.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    pets.each do |pet, attributes|
      attributes.each do |attribute|
        if attribute.mood
          attribute.mood = "happy"
        end
      end
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

def sell_pets
  pets.each do |pet, attributes|
    attributes.each do |attribute|
      if attribute.mood
        attribute.mood = "nervous"
      end
    end
  end
  @pets = {}
end








end # end of Owner class

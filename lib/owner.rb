require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(name)
    @name = name
    @species = name
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def species
    @name
  end

  def say_species
    "I am a #{@species}."
  end

  # def pets
  #   @pets
  # end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood=("happy")
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood=("happy")
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood=("happy")
    end
  end

  def sell_pets
    @pets.each do |species, animals|
      animals.each do |animal|
        animal.mood=("nervous")
      end
    end
    @pets.clear
  end

  def list_pets
    fish = @pets[:fishes].count
    dog = @pets[:dogs].count
    cat = @pets[:cats].count
    "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end


end
# #
# o1 = Owner.new("human")
# o1.buy_dog("pluto")
# o1.buy_dog("nala")
# o1.buy_fish("scales")
#
# binding.pry

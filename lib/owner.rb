class Owner
  # code goes here
  attr_accessor :human, :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @human = human
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    return "I am a #{species}."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.each { |species,pets| pets.each { |pet| pet.mood = "nervous" } }
    pets.clear
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end

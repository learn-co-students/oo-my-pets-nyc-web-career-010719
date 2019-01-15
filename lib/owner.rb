class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  @@count = 0

  def initialize(species, pets = { :cats => [], :dogs => [], :fishes =>[] })
    @species = species
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets.collect do |breed, instances|
      if breed == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |breed, instances|
      if breed == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.collect do |breed, instances|
      if breed == :fishes
        instances.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.collect do |breed, instances|
      instances.each do |all_pets|
        all_pets.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    dog_total = @pets[:dogs].length
    cat_total = @pets[:cats].length
    fish_total = @pets[:fishes].length
    return "I have #{fish_total} fish, #{dog_total} dog(s), and #{cat_total} cat(s)."
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

end

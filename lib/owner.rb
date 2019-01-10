class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end #End of initialize method

  def self.all
    @@all
  end #End of all method

  def self.count
    @@all.size
  end #End of count method

  def self.reset_all
    @@all.clear
  end #End of reset_all method

  def say_species
    "I am a #{species}."
  end #End of say_species method

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end #End of buy_fish method

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end #End of buy_cat method

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end #End of buy_dog method

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end #End of walk_dogs method

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end #End of play_with_cats method

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end#End of feed_fish method

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end #End of sell_pets method

  def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end #End of Owner class

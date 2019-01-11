class Owner

attr_reader :species
attr_accessor :name, :pets

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end



  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    # binding.pry
    @pets[:dogs].each do |smtn|
      smtn.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |smtn|
      smtn.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |smtn|
      smtn.mood = "happy"
      #binding.pry
    end
  end


#@pets = {:cats => [], :dogs => [], :fishes => []}


  def sell_pets
    #binding.pry
    @pets.each do |smtn, val|
      val.each do |smtn_else|
        smtn_else.mood = "nervous"
   #      val_else.each do |last_thing|
   # #binding.pry
   #        last_thing.mood = "nervous"
   #    end
    end
  end
    pets.clear
  end

  def list_pets
   return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end


end  #end of class

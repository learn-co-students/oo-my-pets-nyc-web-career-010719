class Dog
  # code goes here
  attr_accessor :mood
  # def mood=(mood)
  #   @mood = mood
  # end
  attr_reader :name

  def self.species
    self
  end

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end

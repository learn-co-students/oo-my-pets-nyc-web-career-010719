class Fish
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end #End of initialize method
end #End of Fish class

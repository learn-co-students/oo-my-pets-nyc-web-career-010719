require_relative './owner'

class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end


end #end of Fish class

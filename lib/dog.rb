require_relative './owner'

class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name

  def initialize(name = "Daisy", mood = "nervous")
    @name = name
    # @name = "Daisy"
    @mood = mood
  end


end

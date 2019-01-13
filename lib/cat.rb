require_relative './owner'

class Cat


  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    # @name = "crookshanks"
    @name = name
    @mood = mood
  end



  # code goes here
end # end of Cat class

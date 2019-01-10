require 'pry'

class Dog

  attr_reader :name, :owner
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end #this is the end of the Dog class

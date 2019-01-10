require_relative './owner'
require 'pry'

class Fish

  attr_accessor :mood
  attr_reader :name

  def initialize(name = "Nemo", mood = "nervous")
    @name = name
    @mood = mood
  end
end

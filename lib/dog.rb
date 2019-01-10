require_relative './owner'
require 'pry'

class Dog

  attr_accessor :mood
  attr_reader :name

  def initialize(name = "Daisy", mood = "nervous")
    @name = name
    @mood = mood
  end
end

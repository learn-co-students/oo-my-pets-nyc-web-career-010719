require_relative './owner'
require 'pry'

class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(name = "crookshanks", mood = "nervous")
    @name = name
    @mood = mood
  end
end

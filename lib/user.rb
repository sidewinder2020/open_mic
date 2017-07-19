require './lib/joke'
require 'pry'

class User
  attr_accessor :name, :joke

  def initialize(name)
    @name = name
  end

  def jokes
    [] << learn(joke)
  end

  def learn(joke)
    joke
    # jokes << joke
  end

end

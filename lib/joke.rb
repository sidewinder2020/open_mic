require './lib/user'

class Joke
attr_accessor :id, :question, :answer

  def initialize(id, question: "hello", answer: "it's me")
    @id = id
    @question = question
    @answer = answer
  end

end

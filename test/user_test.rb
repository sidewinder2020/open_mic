require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")

    assert_equal "Ali", ali.name
  end

  def test_sal_can_have_a_joke
    sal = User.new("Sal")

    assert [], sal.jokes
  end

  def test_sal_can_learn_a_joke
    sal = User.new("Sal")
    joke = Joke.new(id: 1, question: "hello", answer: "it's me")

    assert_instance_of Joke, sal.learn(joke)
  end

  def test_learn_joke_adds_a_joke_to_jokes
    sal = User.new("Sal")
    joke = Joke.new(id: 1, question: "hello", answer: "it's me")
    sal.learn(joke)

    assert_instance_of Joke, sal.jokes
  end

end

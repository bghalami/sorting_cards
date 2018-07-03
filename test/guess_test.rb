require "./lib/guess"
require "minitest/autorun"
require "minitest/pride"

class GuessTest < Minitest::Test

  def test_does_it_exist
    card = Card.new("Ace","Spades")
    guess = Guess.new("Ace of Spades",card)
    assert_instance_of Guess, guess
  end

  def test_true_correct?
    card = Card.new("Ace","Spades")
    guess = Guess.new("Ace of Spades",card)
    assert_equal true, guess.correct?
  end

  def test_false_correct?
    card = Card.new("Jack","Spades")
    guess = Guess.new("Ace of Spades",card)
    assert_equal false, guess.correct?
  end

  def test_correct_feedback
    card = Card.new("Ace","Spades")
    guess = Guess.new("Ace of Spades",card)
    assert_equal "Correct!", guess.feedback
  end

  def test_incorrect_feedback
    card = Card.new("Jack","Spades")
    guess = Guess.new("Ace of Spades",card)
    assert_equal "Incorrect.", guess.feedback
  end
end

require "./lib/card"
require "minitest/autorun"
require "minitest/pride"

class CardTest < Minitest::Test

  def test_does_it_exist
    card = Card.new("Ace","Spades")
    assert_instance_of Card, card
  end

  def test_suit_up
    card = Card.new("Ace","Spades")
    assert_equal 18, card.suit_up
  end

  def test_comparing_value
    card = Card.new("Ace","Spades")
    card.suit_up
    assert_equal 18, card.comparing_value
  end

  def test_number_value
    card = Card.new("Ace","Spades")
    assert_equal 14, card.number_value
  end

  def test_suit_value
    card = Card.new("Ace","Spades")
    assert_equal 4, card.suit_value
  end

  def test_value
    card = Card.new("Ace","Spades")
    assert_equal "Ace", card.value
  end

  def test_suit
    card = Card.new("Ace","Spades")
    assert_equal "Spades", card.suit
  end
end

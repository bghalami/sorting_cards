require "./lib/card"
require "minitest/autorun"
require "minitest/pride"

class CardTest < Minitest::Test

  def test_does_it_exist
    card = Card.new("Ace","Spades")
    assert_instance_of Card, card
  end
end

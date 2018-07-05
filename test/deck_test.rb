require "./lib/deck"
require "minitest/autorun"
require "minitest/pride"

class DeckTest < Minitest::Test
  def test_does_it_exist
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    deck = Deck.new([card_1,card_2,card_3])
    assert_instance_of Deck, deck
  end

  def test_sort
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    card_4 = Card.new("Ace","Spades")
    card_5 = Card.new("Jack","Hearts")
    deck = Deck.new([card_1,card_2,card_3,card_4,card_5])
    assert_equal [card_2, card_1, card_3, card_5, card_4], deck.sort
  end

  def test_merge_sort
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    card_4 = Card.new("Ace","Spades")
    card_5 = Card.new("Jack","Hearts")
    deck = Deck.new([card_1,card_2,card_3,card_4,card_5])
    assert_equal [card_2, card_1, card_3, card_5, card_4], deck.merge_sort
  end

  def test_count
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    deck = Deck.new([card_1,card_2,card_3])
    assert_equal 3, deck.count
  end

end

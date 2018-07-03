require "./lib/round"
require "minitest/autorun"
require "minitest/pride"

class RoundTest < Minitest::Test

  def test_does_it_exist
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    deck = Deck.new([card_1,card_2,card_3])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_record_guess_correct
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    deck = Deck.new([card_1,card_2,card_3])
    round = Round.new(deck)
    round.record_guess({value: "2", suit: "Spades"})
    assert_equal 1, round.number_correct
    assert_equal card_2, round.current_card
    assert_equal 1, round.guesses.length
  end

  def test_record_guess_incorrect
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    deck = Deck.new([card_1,card_2,card_3])
    round = Round.new(deck)
    binding.pry
    round.record_guess({value: "3", suit: "Spades"})
    assert_equal 0, round.number_correct
    assert_equal card_1, round.current_card
    assert_equal 1, round.guesses.length
  end

  def test_number_correct
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    deck = Deck.new([card_1,card_2,card_3])
    round = Round.new(deck)
    round.record_guess({value: "2", suit: "Spades"})
    round.record_guess({value: "2", suit: "Hearts"})
    assert_equal 2, round.number_correct
  end

  def test_percent_correct
    card_1 = Card.new("2","Spades")
    card_2 = Card.new("2","Hearts")
    card_3 = Card.new("6","Clubs")
    deck = Deck.new([card_1,card_2,card_3])
    round = Round.new(deck)
    round.record_guess({value: "2", suit: "Spades"})
    round.record_guess({value: "3", suit: "Spades"})
    assert_equal 50, round.percent_correct
  end
end

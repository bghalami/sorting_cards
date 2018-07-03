require "./lib/deck.rb"

class Round
  attr_accessor :deck, :deck_of_cards, :guesses, :index, :current_card, :number_correct, :incorrect_guesses
  def initialize(deck)
    @deck = deck
    @deck_of_cards = @deck.cards
    @guesses = []
    @index = 0
    @current_card = @deck_of_cards[0]
    @number_correct = 0
    @incorrect_guesses = 0
  end

  def record_guess(guess_hash)
    holder = Guess.new("#{guess_hash[:value]} of #{guess_hash[:suit]}", @current_card)
    @guesses << holder
    if holder.correct? == true
      @number_correct += 1
      @deck_of_cards = @deck_of_cards.rotate
      @current_card = @deck_of_cards[0]
    else
      @incorrect_guesses += 1
    end
    holder
  end

  def percent_correct
    (((number_correct * 100.00) / (guesses.length * 100.00)) * 100).to_i
  end
end

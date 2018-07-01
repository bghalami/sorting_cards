require "./lib/deck.rb"

class Round
  def initialize(deck)
    @deck = deck
    @deck_of_cards = @deck.cards
    @guesses = []
    @index = 0
    @current_card = @deck_of_cards[0]
    @correct_guesses = 0
    @incorrect_guesses = 0
  end

  def deck
    @deck
  end

  def current_card
    @current_card
  end

  def record_guess(guess)
    holder = Guess.new(guess, @current_card)
    @guesses << holder
    if holder.correct? == true
      @correct_guesses += 1
      @deck_of_cards = deck.cards.rotate
      @current_card = @deck_of_cards[0]
    else
      @incorrect_guesses += 1
    end
    holder
  end

  def guesses
    @guesses
  end

  def number_correct
    @correct_guesses
  end

  def percent_correct
    (((number_correct * 100.00) / (guesses.length * 100.00)) * 100).to_i
  end
end

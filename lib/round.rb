require ".lib/deck.rb"

class Round
  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = deck.cards[0]
    @correct_guesses = 0
    @incorrect_guesses = 0
  end

  def current_card
    @current_card
  end

  def record_guess(guess)
    holder = Guess.new(guess, @current_card)
    @guesses << holder
    if holder.correct? == true
      @correct_guesses += 1
      deck.rotate
    else
      @incorrect_guesses += 1
    end
  end

  def guesses
    @guesses
  end

  def number_correct
    @correct_guesses
  end

  def percent_correct
    @correct_guesses / @guesses.length
  end 
end

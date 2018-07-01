require "./lib/card.rb"

class Guess
  def initialize(guess, card)
    @guess = guess.upcase
    @card = card
    @answer = "#{card.value.upcase} OF #{card.suit.upcase}"
  end

  def card
    @card 
  end

  def response
    @guess
  end

  def correct?
    if @guess == @answer
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      "Correct!"
    else
      "Incorrect."
    end
  end
end

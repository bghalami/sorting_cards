require "./lib/card.rb"

class Guess
  def initialize(guess, card)
    @guess = guess.upcase
    @answer = card
  end

  new_card = "#{@answer.value.upcase} of #{@answer.suit.upcase}"

  def card
    @answer
  end

  def response
    @guess
  end

  def correct?
    if @guess == new_card
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

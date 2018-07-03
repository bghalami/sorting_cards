require "./lib/card.rb"

class Guess
  attr_accessor :response, :answer, :card
  def initialize(response, card)
    @response = response
    @answer = "#{card.value} of #{card.suit}"
    @card = card
  end

  def correct?
    if @response == @answer
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

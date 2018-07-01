require "./lib/guess.rb"

class Deck
  def initialize(array)
    @cards = array
  end

  def cards
    @cards
  end

  def count
    @cards.length
  end
end

require "./lib/guess.rb"

class Deck
  attr_accessor :cards
  def initialize(cards)
    @cards = cards
  end

  def sort
    swapped = true
    while swapped do
      swapped = false
      (count - 1).times do |card|
        if @cards[card].comparing_value > @cards[card + 1].comparing_value
          @cards[card], @cards[card + 1] = @cards[card + 1], @cards[card]
          swapped = true
        end
      end
    end
    @cards
  end

  def count
    @cards.length
  end
end

require "./lib/guess.rb"

class Deck
  def initialize(array)
    @cards = array
  end

  def sort
    swapped = true
    while swapped do
      swapped = false
      (count - 1).times do |card|
      if @cards[card].number_value == @cards[card + 1].number_value
        @cards[card].suit_up
          if @cards[card].comparing_value > @cards[card + 1].comparing_value
            @cards[card], @cards[card + 1] = @cards[card + 1], @cards[card]
            swapped = true
          end
      elsif @cards[card].number_value > @cards[card + 1].number_value
        @cards[card], @cards[card + 1] = @cards[card + 1], @cards[card]
        swapped = true
      end
      end
    end
    @cards
  end


  def cards
    @cards
  end

  def count
    @cards.length
  end
end

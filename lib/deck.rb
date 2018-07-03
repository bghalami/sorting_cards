require "./lib/guess.rb"

class Deck
  attr_accessor :cards
  def initialize(cards)
    @cards = cards
  end

  def sort
    lookup = { "2" => 20,
                     "3" => 30,
                     "4" => 40,
                     "5" => 50,
                     "6" => 60,
                     "7" => 70,
                     "8" => 80,
                     "9" => 90,
                     "10" => 100,
                     "Jack" => 110,
                     "Queen" => 120,
                     "King" => 130,
                     "Ace" => 140,
                   }

    suit_value = {"Clubs" => 1,
                   "Diamonds" => 2,
                   "Hearts" => 3,
                   "Spades" => 4}
    swapped = true
    while swapped do
      swapped = false
      (count - 1).times do |card|
        if (suit_value[@cards[card].suit] + lookup[@cards[card].value]) > (suit_value[@cards[card + 1].suit] + lookup[@cards[card + 1].value])
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

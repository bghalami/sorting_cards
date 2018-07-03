require "pry"

 class Card
   attr_accessor :value, :suit, :comparing_value
   def initialize(value, suit)
     @value = value
     @suit = suit
     @lookup = { "2" => 20,
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

     @suit_value = {"Clubs" => 1,
                    "Diamonds" => 2,
                    "Hearts" => 3,
                    "Spades" => 4}

     @comparing_value = @lookup[value] + @suit_value[suit]
   end
 end

 class Card
   def initialize(value, suit)
     @card_value = value
     @number_value = 0
     if value.upcase == "JACK"
       @number_value = 11
     elsif value.upcase == "QUEEN"
       @number_value = 12
     elsif value.upcase == "KING"
       @number_value = 13
     elsif value.upcase == "ACE"
       @number_value = 14
     else
       @number_value = value
     end

     @card_suit = suit

     @suit_value = 0
     if suit.upcase == "CLUBS"
       @suit_value = 1
     elsif suit.upcase == "DIAMONDS"
       @suit_value = 2
     elsif suit.upcase == "HEARTS"
       @suit_value = 3
     else suit.upcase == "SPADES"
       @suit_value = 4
     end
   end

   def suit_up
     @number_value = number_value + suit_value
   end

   def number_value
     @number_value.to_i
   end

   def suit_value
     @suit_value.to_i
   end

   def value
     @card_value
   end

   def suit
     @card_suit
   end
 end

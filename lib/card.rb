require "pry"

 class Card
   attr_accessor :value, :suit, :comparing_value
   def initialize(value, suit)
     @value = value
     @suit = suit
   end
 end

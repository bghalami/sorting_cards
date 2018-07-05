require "./lib/guess.rb"

class Deck
  attr_accessor :cards
  def initialize(cards)
    @cards = cards
  end

  def merge_sort(sort_array = @cards)
    if sort_array.length <= 1
      sort_array
    else
      mid = (sort_array.length / 2).floor
      left = merge_sort(sort_array[0..mid - 1])
      right = merge_sort(sort_array[mid..sort_array.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left[0].comparing_value < right[0].comparing_value
        [left[0]] + merge(left[1..left.length],right)
    else
      [right[0]] + merge(left, right[1..right.length])
    end
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

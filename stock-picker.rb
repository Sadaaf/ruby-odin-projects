# frozen_string_literal: true

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#  > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(stocks)
  discared_min_indices = []
  discared_max_indices = []
  max = stocks.each_with_index.max
  min = stocks.each_with_index.min
  loop do
    break unless min[1] > max[1]

    discared_max_indices << max[1]
    max = [-99_999_999_999, -1]
    stocks.each_with_index do |value, index|
      min = [value, index] if !discared_min_indices.include?(index) && min[0] > value
      max = [value, index] if !discared_max_indices.include?(index) && max[0] < value
    end
  end
  [min[1], max[1]]
end

p stock_picker([1, 17, 3, 6, 1, 9, 1, 15, 8, 1200, 6, 1, 16, 10, 99])

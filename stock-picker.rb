def stock_picker(stocks)
  discared_min_indices = []
  discared_max_indices = []
  max = stocks.each_with_index.max
  min = stocks.each_with_index.min
  loop do
    if (min[1]>max[1])
      discared_max_indices << max[1]
      max = [-99999999999, -1]
      stocks.each_with_index do |value,index|
        min = [value, index] if !discared_min_indices.include?(index) && min[0] > value
        max = [value, index] if !discared_max_indices.include?(index) && max[0] < value
      end
    else
      break
    end
  end
  [min[1],max[1]]
end

p stock_picker([1,17,3,6,1,9,1,15,8,1200,6,1,16,10,99])
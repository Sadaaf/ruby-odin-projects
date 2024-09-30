# frozen_string_literal: true

def bubble_sort(arr)
  something_chagned_last_time = true
  loop do
    break unless something_chagned_last_time

    something_chagned_last_time = false
    arr.each_with_index do |value, index|
      next unless arr[index + 1] && value > arr[index + 1]

      arr[index] = arr[index + 1]
      arr[index + 1] = value
      something_chagned_last_time = true
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([500, 234, 18, 22_323, 212, 12])

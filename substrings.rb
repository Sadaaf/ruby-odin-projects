# frozen_string_literal: true

def substrings(word, dictionary)
  words = word.downcase.split
  dictionary.each_with_object(Hash.new(0)) do |curr, acc|
    words.each do |word|
      acc[curr] = acc[curr] + 1 if word.include?(curr.downcase)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings('below', dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)

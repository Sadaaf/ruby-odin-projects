def substrings(word, dictionary)
  words = word.downcase.split
  dictionary.reduce(Hash.new(0)) do |acc, curr|
    words.each do |word|
      acc[curr] = acc[curr]+1  if word.include?(curr.downcase)
    end
    acc
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)

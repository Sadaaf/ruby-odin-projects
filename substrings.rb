def substrings(word, dictionary)
  dictionary.reduce(Hash.new(0)) do |acc, curr|
    acc[curr] = acc[curr]+1 if word.include?(curr)
    acc
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)

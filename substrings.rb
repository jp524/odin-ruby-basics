def substrings(words, dictionary)
  words = words.downcase.split(/\W+/)
  dictionary.reduce(Hash.new(0)) do |result, dict_word|
    words.each do |word|
      result[dict_word] +=1 if word.include? dict_word
    end
  p result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
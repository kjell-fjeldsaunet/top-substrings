def substrings(string, words) 
  result_hash = Hash.new(0)
  string_array = string.downcase.split("")
  words.each do |word|
    adjusted_word_length = word.length - 1 
    (string_array.length - adjusted_word_length).times do |i| 
      if string_array[i..(i + adjusted_word_length)].join == word then result_hash[word] += 1 end
    end
  end
  result_hash
end

#Tests

#p substrings("tes t", ["te", "fe"]) #=> { "te" => 1 }
#dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#p substrings("Howdy partner, sit down! How's it going?", dictionary)
#p substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }
#p substrings("xoxoxo", ["xox"])

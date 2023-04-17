def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |item, hash|
    string.downcase.scan(/\w+/).each do |word|
      word.include?(item) ? hash[item] += 1 : hash
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

string = "Howdy partner, sit down! How's it going?"

puts substrings(string, dictionary)

puts substrings('Below', dictionary)

puts substrings('I be going low low low', dictionary)

def caps(string)
  string.length > 10 ? string.upcase : string
end

puts caps('Jacob')
puts caps('Jacob Sanders')

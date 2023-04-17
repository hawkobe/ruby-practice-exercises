age = 15

case age
in a
 puts a
end

# be careful because the variable pattern always
# binds the value to the variable

a = 5

case 1
in a
  a
end

puts a

# if you want to match against a variable of that name
# use the pin operator "^" to match the variable

a = 5

case 1
in ^a
  :no_match
end

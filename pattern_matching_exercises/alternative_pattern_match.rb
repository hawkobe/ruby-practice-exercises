# allows you to check if multiple options match the input

case 0
in 0 | 1 | 2
  puts :match
end


# again, a pin operator (^) can be used for variables

a = 0
b = 1
c = 2

case 0
in ^a | ^b | ^c
  puts :match
end

# most basic, uses === object match

arr = [1, 2]

case arr
in [1, 2] then puts :match
in [3, 4] then puts :no_match
end

# more complex example

case arr
in [Integer, Integer]
  puts :match
in [String, String]
  puts :no_match
end

# only matches against arrays with same number of elements

arr = [1, 2, 3]

# case arr
# in [Integer, Integer]
#   puts :no_match
# end

# to match against only part of an array, use splat (*)

arr = [1, 2, 3]

case arr
in [Integer, Integer, *]
  puts :match
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

case arr
in [Integer, Integer, *, Integer, Integer]
  puts :match
end

case arr
in [Integer, Integer, *, 9, 10]
  puts :match
end

# you can scoop up the values of the array matched
# by splat (*) by using the variable pattern

arr = [1, 2, 3, 4]

case arr
in [1, 2, *tail]
  p tail
end

# if you don't care about some values and are happy to match
# any value for that index you can use (_)

case arr
in [_, _, 3, 4]
  puts :match
end

# an example of matching an array of two numbers,
# but only if they aren't the same number

arr = [1, 2]
case arr
in [a, b] unless a == b
  puts :match
end

# matching against nested arrays

arr = [1, 2, [3, 4]]

case arr
in [_, _, [3, 4]]
  puts :match
end

# using variable pattern to bind matching values to variables
# to then use later

arr = [1, 2, 3, 4, 5]

case arr
in [1, 2, 3, a, b]
  puts a
  puts b    
end

# using the As Pattern to match against a nested
# array and some individual parts of it

case [1, 2, 3, [4, 5]]
in [1, 2, 3, [4, a] => arr]
  puts a
  p arr
end

# be careful to avoid variable reassignment
# because something like this will mutate your var

arr = [1, 2, 3]

case [1, 2, 4]
in arr
  :match
end

p arr

# you do not have to use brackets ([])
# for the outer array when matching an array

arr = [1, 2, 3, 4]

case arr
in 1, 2, 3, 4
  puts :match
end



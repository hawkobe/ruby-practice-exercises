# match against the actual values of a hash

case { a: 'apple', b: 'banana' }
in { a: 'aardvark', b: 'bat' }
  puts :no_match
in { a: 'apple', b: 'banana' }
  puts :match
end

# match against a hash and assign values to variables

case { a: 'apple', b: 'banana' }
in { a: a, b: b }
  puts a
  puts b
end

# due to rubys sytax for hashes, we could rewrite above as below

case { a: 'apple', b: 'banana'}
in { a:, b: }
  puts a
  puts b
end

# same as with arrays, you can omit brackets ({})

case { a: 'apple', b: 'banana'}
in a:, b:
  puts a  
  puts b 
end

# use double splat (**) to scoop up multiple k-v pairs

case { a: 'ant', b: 'ball', c: 'cat'}
in { a: 'ant', **rest}
  p rest
end

# you need to guard against patterns that allow a hash
# to match by the idea that it will match when only a subset
# of keys match, for example

case { a: 'ant', b: 'ball' }
in { a: 'ant' }
  'this will match'
in { a: 'ant', b: 'ball' }
  'this will never be reached'
end

# to ensure you only match exactly, use double splat nil (**nil)

case { a: 'ant', b: 'ball' }
in { a: 'ant', **nil }
  puts :no_match
in { a: 'ant', b: 'ball'}
  puts :match
end

# use the As Pattern to assign the entire hash match to a variable

case { a: 'ant', b: 'ball' }
in { a: 'ant' } => hash
  p hash
end
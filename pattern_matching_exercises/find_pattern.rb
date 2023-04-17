# to match against part of an array

case [1, 2, 3]
in [*pre, 1, 2, 3, *post]
  p pre
  p post
end

case [1, 2, 3, 4, 5]
in [*pre, 2, 3, *post]
  p pre
  p post
end

# want to find the first two consecutive strings

case [1, 2, "a", 4, "b", "c", 7, 8, 9]
in [*pre, String => x, String => z, *post]
  p pre
  p x
  p z
  p post
end


# common use case because JSON, etc. will often leave you with 
# an array of hash data, in this, we want to locate a record,
# and will need to match a few hash keys

data = [
  {name: 'James', age: 50, first_language: 'english', job_title: 'general manager'},
  {name: 'Jill', age: 32, first_language: 'italian', job_title: 'leet coder'},
  {name: 'Helen', age: 24, first_language: 'dutch', job_title: 'biscuit quality control'},
  {name: 'Bob', age: 64, first_language: 'english', job_title: 'table tennis king'},
  {name: 'Betty', age: 55, first_language: 'spanish', job_title: 'pie maker'},
]

name = 'Jill'
age = 32
job_title = 'leet coder'

case data
in [*, {name: ^name, age: ^age, first_language: first_language, job_title: ^job_title }, *]
else     
  first_language = nil
end

puts first_language





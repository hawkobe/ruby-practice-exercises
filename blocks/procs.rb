a_proc = Proc.new { puts "this is a proc" }

a_proc.call

# other syntax

a_proc = proc { puts "this is also a proc" }

a_proc.call

# arguments are declared within pipes (||)

a_proc = Proc.new { |name, age| puts "Name: #{name} --- Age: #{age}" }

a_proc.call("Jacob", 105)

# proc doesn't care if you pass in fewer args than you specify
# it assigns nil to any params you name but don't pass through
# args

a_proc = Proc.new { |a, b| puts "a: #{a} --- b: #{b}" }

a_proc.call("apple")

# thats why this works

nested_array = [[1, 2], [3, 4], [5,6]]
nested_array.select {|a, b| a + b > 10}

# => [5, 6]

# lambda DOES care whether the number of parameters expected is met

a_lambda = lambda { |a, b| puts "a: #{a} --- b: #{b}" }

# a_lambda.call("apple")
# => wrong number of Arguments (given 1, expected 2) (ArgumentError)

# a_lambda.call("apple", "banana", "cake")
# => wrong number of Arguments (given 3, expected 2) (ArgumentError)

# explicit return in lambda

a_lambda = -> { return 1 }

puts a_lambda.call

# returns to the context in which it is called for Proc

a_proc = Proc.new { return }

# a_proc.call
# => localJumpError (unexpected return)

# returning procs from inside a method works because it
# returns from the method before the code below is executed

def my_method
  a_proc = Proc.new { return }
  puts "this line will be printed"
  a_proc.call
  puts "this line is never reached"
end

my_method
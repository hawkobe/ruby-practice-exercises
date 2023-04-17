# the two different lambda syntaxes

my_lambda = lambda { puts "my lambda" }

my_other_lambda = -> { puts "hello from the other side" }

# you have to use the call method to call your lambda

my_lambda = -> { puts 'high five' }
my_lambda.call

# for accepting args into your lambda

my_name = ->(name) { puts "hello #{name}" }

my_age = lambda { |age| puts "I am #{age} years old" }

my_name.call("jacob")
my_age.call(34)

# multiple ways to call them

my_name = ->(name) { puts "hello #{name}" }

my_name.call("Jacob")
my_name.("Jacob")
my_name["Jacob"]
my_name.=== "Jacob"
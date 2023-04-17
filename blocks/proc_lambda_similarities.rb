# both accept default args

my_proc = Proc.new { |name="bob"| puts name }

my_proc.call

my_lambda = ->(name="r2d2") { puts name }

my_lambda.call

# both can be used as args for a method

def my_method(useful_arg)
  useful_arg.call
end

my_lambda = -> { puts "lambda" }
my_proc = Proc.new { puts "proc" }

my_method(my_lambda)

my_method(my_proc)
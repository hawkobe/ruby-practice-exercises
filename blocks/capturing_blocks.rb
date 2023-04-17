def cool_method(&my_block)
  my_block.call
end

cool_method { puts "cool" }

arr = ["1", "2", "3"]

p arr.map(&:to_i)

def cool_method
  yield
end

my_proc = Proc.new { puts "proc party" }

cool_method(&my_proc)

def cool_method(an_arg)
  an_arg.call
end

a_proc = Proc.new { puts "Procodile Hunter" }

cool_method(&a_proc)



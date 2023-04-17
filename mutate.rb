a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before the mutate method: #{a}"
p mutate(a)
p "After the mutate method: #{a}"

# def no_mutate(array)
#   last_number = array.last
# end

# p "Before the no_mutate method: #{a}"
# p no_mutate(a)
# p "After the no_mutate method: #{a}"

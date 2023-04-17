# module ModuleM
#   m1, m2 = 4

#   puts "Inside module"
#   puts local_variables
# end


# def method1
#   v, w = 3
#   puts "Inside method"
#   puts local_variables
# end


# class Some
#   x, y = 2
#   puts "Inside class"
#   puts local_variables
# end

# method1

# t1, t2 = 7

# puts "Inside toplevel"
# puts local_variables

$gb = 6


module ModuleM
    puts "Inside module"
    puts $gb
end


def method1
    puts "Inside method"
    puts $gb
end


class Some
    puts "Inside class"
    puts $gb
end

method1

puts "Inside toplevel"
puts $gb
puts global_variables.include? :$gb
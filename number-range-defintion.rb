puts 'Pick a number between 0 and 100'
user_number = gets.chomp.to_i
inf = Float::INFINITY

response = case user_number
           when 0..50
             "Your number is #{user_number}, which is between 0 and 50"
           when 51..100
             "Your number is #{user_number}, which is between 51 and 100"
           when 100..inf
             "Your number is #{user_number}, which is greater than 100! Cheater!"
           else
             "You didn't input the right data!"
           end

puts response

# puts "Please enter a number between 0 and 100."
# number = gets.chomp.to_i

# if number < 0
#   puts "You can't enter a negative number!"
# elsif number <= 50
#   puts "#{number} is between 0 and 50"
# elsif number <= 100
#   puts "#{number} is between 51 and 100"
# else
#   puts "#{number} is above 100"
# end

# should use an if statement here. Makes more sense.

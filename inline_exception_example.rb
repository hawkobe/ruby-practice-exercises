zero = 0
puts 'Before the call'
begin
  zero.each { |element| puts element }
rescue StandardError
  puts "Can't do that!"
end
puts 'After the call'

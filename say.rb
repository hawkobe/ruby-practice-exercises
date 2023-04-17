puts 'hello'
puts 'hi'
puts 'how are you'
puts "I'm fine"

def say(words = 'hello')
  puts words.capitalize + '.'
end

say
say 'hi'
say 'how are you?'
say "i'm fine"

string = 'This is a lot more words than just one'

say(string)

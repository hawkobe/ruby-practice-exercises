require 'pry-byebug'

def yell_greeting(string)
  binding.pry
  name = string
  name = name.upcase
  greeting = "WASSUP, #{name}!"
  puts greeting
end

yell_greeting('bob')

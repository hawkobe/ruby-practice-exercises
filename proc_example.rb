talk = proc do
  puts 'I am talking'
end

talk.call

# proc taking an argument

talk_argument = proc do |name|
  puts "I am talking to #{name}"
end

talk_argument.call 'Jacob'

# proc passed into method

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = proc do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)

def logger
  yield
end

logger { puts 'hello from the block' }

logger do 
  p [1, 2, 3]
end

def double_vision
  yield
  yield
end

double_vision { puts "How many fingers am I holding up?" }

def love_language
  yield('Ruby')
  yield('Rails')
end

love_language { |lang| puts "I love #{lang}" }

# example of a banking app that allows a bank to print
# a list of transactions to a statement.

# this uses terminal, but could be sent to a spreadsheet
# or any other document youd like to use

@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each do |transaction|
    yield transaction
  end
end

transaction_statement do |transaction|
  p "%0.2f" % transaction
end

# if instead you didn't want the user (bank)
# to determine the way the transaction is printed
# but only the format, you could move the "p"
# up to the method definition, like so

def transaction_statement
  @transactions.each do |transaction|
    p yield transaction # `p` is called within our method now instead of within the block
  end
end

transaction_statement do |transaction|
  "%0.2f" % transaction
end

# for gathering the value returned from the block

def transaction_statement
  formatted_transactions = []
  @transactions.each do |transaction|
    formatted_transactions << yield(transaction)
  end

  p formatted_transactions
end

transaction_statement do |transaction|
  "%0.2f" % transaction
end

# if no values are passed in with yield and the block
# expects one, the the argument is assigned nil

def say_something
  yield # no arguments are passed to the yield
end

say_something do |word|
  puts "And then I said: #{word}"
end

# if you have two params but pass 3 args, the last is not
# assigned to a param and can't be referenced in block

def mad_libs
  yield('cool', 'beans', 'burrito') # 3 arguments are passed to yield
end

mad_libs do |adjective, noun| # But the block only takes 2 parameters
  puts "I said #{adjective} #{noun}!"
end

# working with hashes, you might need to yield key and value
# make sure your block names two params

def awesome_method
  hash = {a: 'apple', b: 'banana', c: 'cookie'}

  hash.each do |key, value|
    yield key, value
  end
end

awesome_method { |key, value| puts "#{key}: #{value}" }

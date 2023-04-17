def simple_method
  yield
end

# simple_method (raises error because no block was included when method was called)

# guard against whether the caller includes a block

def maybe_block
  if block_given?
    puts "block party"
  end
  puts "executed regardless"
end

maybe_block
maybe_block {} # STILL yields final line of method


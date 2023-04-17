def take_block(&block)
  block.call
end

take_block do
  puts 'Block being called in the method!'
end

# more complex example

def take_block_complex(number, &block)
  block.call(number)
end

number = 42
take_block_complex(number) do |num|
  puts "Block being called in the method! #{num}"
end

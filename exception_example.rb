# syntax/structure

begin
  # perform some dangerous operation
rescue StandardError
  # do this if operation fails
  # for example, log the error
end

# example

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  puts "#{name}'s name has #{name.length} letters in it."
rescue StandardError
  puts 'Something went wrong!'
end

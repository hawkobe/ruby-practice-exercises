require 'pry-byebug'

def caesar_cipher(string, shift)
  string_array = string.chars.map { |c| c.ord }
  #  binding.pry

  shifted_string = string_array.map do |c|
    if !(c.between?(97, 122) || c.between?(65, 90))
      c
    elsif c.between?(97, 122)
      if shift.positive?
        (c + shift) > 122 ? c + shift - 26 : c + shift
      else
        (c + shift) < 97 ? c + shift + 26 : c + shift
      end
    elsif c.between?(65, 90)
      if shift.positive?
        (c + shift) > 90 ? c + shift - 26 : c + shift
      else
        (c + shift) < 65 ? c + shift + 26 : c + shift
      end
    end
  end

  output_string = shifted_string.map { |c| c.chr }.join

  output_string
end

# puts 'Welcome to the cipher, please answer the following:'

# puts 'Enter a string you would like to have coded:'
# string = gets.chomp

# puts 'Enter your secret number to shift your letters:'
# shift = gets.chomp.to_i

# caesar_cipher(string, shift)

# puts 'Would you like to run your cipher again with different input? If so, type YES'
# user_response = gets.chomp

# while user_response == 'YES'
#   puts 'Enter a string you would like to have coded:'
#   string = gets.chomp

#   puts 'Enter your secret number to shift your letters:'
#   shift = gets.chomp.to_i

#   caesar_cipher(string, shift)

#   puts "Would you like to run your cipher again with different input?\n If so, type YES, for no, type NO"
#   user_response = gets.chomp

# end

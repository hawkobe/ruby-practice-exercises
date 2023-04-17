require 'pry-byebug'

# def caesar_cipher(string, shift)
#   ascii_string = string.bytes.map do |ascii|
#     if ascii.between?(65, 90) || ascii.between?(97, 122)
#       unless (65..90).include?(ascii + shift) || (97..122).include?(ascii + shift)
#         shift.positive? ? ascii + shift - 26 : ascii + shift + 26
#       else
#         ascii + shift
#       end
#     else
#       ascii
#     end
#   end
#   ascii_string.pack('c*')
# end

# puts caesar_cipher("What a string!", 5)

# def caesar_cipher(string, shift)
#   ascii_string = string.bytes.map do |ascii|
#     case ascii
#     when (65..90)
#       if shift.positive?
#         (65..90).include?(ascii + shift) ? ascii + shift : ascii + shift - 26
#       else
#         (65..90).include?(ascii + shift) ? ascii + shift : ascii + shift + 26
#       end
#     when (97..122)
#       if shift.positive?
#         (97..122).include?(ascii + shift) ? ascii + shift : ascii + shift - 26
#       else
#         (97..122).include?(ascii + shift) ? ascii + shift : ascii + shift + 26
#       end
#     else
#       ascii
#     end
#   end
#   ascii_string.pack('c*')
# end

def caesar_cipher(string, shift)
  ascii_string = string.bytes.map do |ascii|
    case ascii
    when (65..90).include?(ascii + shift)
       shift.positive? ? ascii + shift - 26 : ascii + shift + 26
      else
        (65..90).include?(ascii + shift) ? ascii + shift : ascii + shift + 26
      end
    when (97..122)
      if shift.positive?
        (97..122).include?(ascii + shift) ? ascii + shift : ascii + shift - 26
      else
        (97..122).include?(ascii + shift) ? ascii + shift : ascii + shift + 26
      end
    else
      ascii
    end
  end
  ascii_string.pack('c*')
end

puts caesar_cipher("What a string!", -5)



      


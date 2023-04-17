require 'pry-byebug'

temperature = 32

binding.pry
clothing_suggestion = case temperature
                      when 0..30
                        "It's too cold, don't even go out"
                      when 31..50
                        "You'll need a jacket!"
                      when 51..70
                        'Maybe a light jacket!'
                      when 71..90
                        "It's getting hot. Shorts and tee shirt baby!"
                      else
                        "I'm not sure what the weather is like"
                      end

puts clothing_suggestion

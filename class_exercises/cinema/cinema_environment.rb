require './cinema_class'
require './movie_class'

triangle_of_sadness = Movie.new('Triangle of Sadness', '7:45 pm')
till = Movie.new('Till', '5:00 pm')

# Movie.print_movies

broadway = Cinema.new('Broadway Theater', '111 E Broadway, 300 S, Salt Lake City, UT 84111')

broadway.add_movie(triangle_of_sadness)
broadway.add_movie(till)

# p broadway.movies

p broadway

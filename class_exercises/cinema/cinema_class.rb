class Cinema
  attr_accessor :name, :location, :movies

  def initialize(name, location)
    self.name = name
    self.location = location
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

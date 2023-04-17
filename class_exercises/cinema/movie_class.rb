class Movie
  attr_accessor :title, :showtime, :cinema

  @@all = []
  def initialize(title, showtime)
    self.title = title
    self.showtime = showtime
    @@all << self
  end

  def self.print_movies
    p @@all
  end
end

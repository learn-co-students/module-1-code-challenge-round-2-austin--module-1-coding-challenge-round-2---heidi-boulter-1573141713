class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
# returns an array of Review instances associated with the Viewer instance
    Review.all.select { |reviews| reviews.viewer == self }
  end

  def reviewed_movies
# returns an array of Movie instances reviewed by the Viewer instance.
    review_arr = self.reviews
    review_arr.map { |reviews| reviews.movie }
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
# ???
    if !reviewed_movies.include?(movie) # "!" because does not associate?
      Review.new
    else 
      @rating = rating.keep_if { |rating| rating < 10 } # ratings only up to 10
    end
  end
  
end

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
# returns an array of all the Review instances for the Movie
    Review.all.select { |reviews| reviews.movie == self }
  end

  def reviewers
# returns an array of all of the Viewer instances that reviewed the Movie
    review_arr = self.reviews
    review_arr.map { |reviews| reviews.viewer }
  end

  def average_rating
# returns the average of all ratings for the Movie instance
# to average ratings, add all ratings together and divide by the total number of ratings
    ratings_arr = reviews
    ratings_arr.map { |reviews| reviews.rating }.reduce(0) { |sum, num| sum + num }.to_f / ratings_arr.length
  end

  def highest_rated
# returns the Movie instance with the highest average rating.
# BONUS
    average_rating
  end

end

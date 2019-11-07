# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Viewer
viewer1 = Viewer.new("hboulter")

# Movie
movie1 = Movie.new("Finding Nemo")
movie2 = Movie.new("Lion King")

# Review
review1 = Review.new(viewer1, movie1, 10)
review2 = Review.new(viewer1, movie2, 8)
review3 = Review.new(viewer1, movie1, 2)

# ---------------------------------


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

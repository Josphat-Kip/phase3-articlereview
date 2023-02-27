ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'
review = Review.last 
review.print_review
Review.first.user
Review.first.product
Product.first.reviews
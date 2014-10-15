class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(:reviewable_type => params["reviewable"], :reviewable_id => params["#{params[:reviewable].downcase}_id"])
    @reviewable = @reviews.first.reviewable
  end
end

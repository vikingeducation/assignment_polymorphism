class ReviewsController < ApplicationController

  def index
    reviewable_id = get_reviewable_id
    @reviewable = params[:reviewable].constantize.find(reviewable_id)
    @reviews = @reviewable.reviews
  end

  private

  def get_reviewable_id
    class_name = params[:reviewable]
    class_id = (class_name.downcase + "_id").to_sym
    params[class_id]
  end
end

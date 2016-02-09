class ReviewsController < ApplicationController

  def index
    @parent = params[:reviewable].constantize
    @reviews = Review.where("reviewable_type = #{@parent}").where("reviewable_id" = "#{}")
  end
end

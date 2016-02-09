class ReviewsController < ApplicationController
  def index
    @parent = extract_reviewable.find(params[id_type])
    @reviews = @parent.reviews
  end

  private

  def extract_reviewable
    params[:reviewable].constantize
  end

  def id_type
    return :game_id if params[:reviewable] == 'Game'
    return :movie_id if params[:reviewable] == 'Movie'
  end
end

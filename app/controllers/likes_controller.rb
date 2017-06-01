class LikesController < ApplicationController

  def index
    @likes = Like.all
    if params[:likable]
      @likable = params[:likable]
      @likes = @likes.where(:likable_type => @likable)
    end
  end

end

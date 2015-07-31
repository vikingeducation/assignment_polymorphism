class LikesController < ApplicationController

  def index
    if params[:likeable] == "Post"
      @parent=Post.find(params[:post_id])
    elsif params[:likeable] == "Link"
      @parent=Link.find(params[:link_id])
    else
      @parent=Picture.find(params[:picture_id])
    end

  end
end

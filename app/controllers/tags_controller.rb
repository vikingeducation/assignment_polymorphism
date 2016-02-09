class TagsController < ApplicationController


  def index
    if params[:commentable] == "Article"
      @parent = Article.find(params[:article_id])
    elsif params[:commentable] == "Comment"
      @parent = Comment.find(params[:comment_id])
    end
    @tags = @parent.tags
  end


end

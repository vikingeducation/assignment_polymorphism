class TagsController < ApplicationController


  def index
    if params[:taggable] == "Article"
      @parent = Article.find(params[:article_id])
    elsif params[:taggable] == "Comment"
      @parent = Comment.find(params[:comment_id])
    end
    @tags = @parent.tags
  end


end

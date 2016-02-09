class ArticlesController < ApplicationController

  def index
    @articles = Newspaper.find(params[:id]).articles
  end  
end

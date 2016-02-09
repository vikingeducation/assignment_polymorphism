class ArticlesController < ApplicationController

  def index
    resource_id = params[:newspaper_id] ||  params[:magazine_id]
    
    @articles = params[:articleable].classify.constantize.find(resource_id.to_i).articles
  end  
end

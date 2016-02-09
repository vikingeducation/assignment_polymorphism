class TagsController < ApplicationController


  def index
    parent_class = params[:taggable].constantize
    parent_sym = (params[:taggable] + "_id").downcase.to_sym
    @parent = parent_class.find(params[parent_sym])

    @tags = @parent.tags
  end


end

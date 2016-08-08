class TagsController < ApplicationController

  def index
    @parent = params[:taggable].constantize.find(params[parent_id])
  end

private
  def parent_id
    "#{params[:taggable].downcase}_id".to_sym
  end
end

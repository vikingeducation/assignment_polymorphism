class ReviewsController < ApplicationController

  def index
    parent = params[:parent]
    parent_type = parent.constantize
    parent_id = params["#{parent.downcase}_id".to_sym]
    @parent = parent_type.find(parent_id)
  end

end

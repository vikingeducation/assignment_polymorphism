class ReviewsController < ApplicationController


  def index
    @parent_resource = extract_resource
    @reviews = @parent_resource.reviews
  end

private

  def extract_resource
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end



end

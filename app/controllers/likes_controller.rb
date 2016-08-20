class LikesController < ApplicationController
  def index
    @likes = extract_likeable.likes
  end


  private

  def extract_likeable
    resource, id = request.path.split('/')[1,2]

    resource.singularize.classify.constantize.find(id)
  end
end

class TagsController < ApplicationController
  def index
    @tags = extract_taggable.tags
    @taggable = @tags.first.taggable
  end

  private
  def extract_taggable
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end
end

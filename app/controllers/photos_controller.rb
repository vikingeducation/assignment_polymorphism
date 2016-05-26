class PhotosController < ApplicationController

  def index
    @photos = extract_photo_parent.photos
  end

  private

  def extract_photo_parent
    resource, id = request.path.split("/")[1,2]

    resource.singularize.classify.constantize.find(id)
  end
end

class CollarController < ApplicationController

  def index
    @collars = extract_collarable.collars
    @animal = extract_collarable
  end

  private
  def extract_collarable
    resource, id = request.path.split('/')[1,2]
    puts "extract_collarable"
    p resource
    p id
    p resource.singularize.classify.constantize.find(id)
    resource.singularize.classify.constantize.find(id)
  end

end

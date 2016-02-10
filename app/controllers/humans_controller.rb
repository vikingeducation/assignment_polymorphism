class HumansController < ApplicationController

  def index
    @humans = extract_humanable.humans
    @animal = extract_humanable
    @animal_type = extract_humanable.class
  end

  private

  def extract_humanable
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end
end

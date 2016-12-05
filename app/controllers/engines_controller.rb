class EnginesController < ApplicationController
  def index
    @engines = drivable.engines
  end


  private 
  def drivable
    drivable, id = request.path.split("/")[1,2]
    drivable.singularize.classify.constantize.find(id)
  end
end

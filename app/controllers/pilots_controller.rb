class PilotsController < ApplicationController
  def index
    # @pilots = params[:vehicle].classify.constantize.find().pilots
    @pilots = extract_vehicle.pilots
  end

  private 
  def extract_vehicle
    vehicle, id = request.path.split('/')[1, 2]
    vehicle.singularize.classify.constantize.find(id)
    
  end

end


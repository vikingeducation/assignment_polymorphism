class PassengersController < ApplicationController

  def index
    @vessel = get_vessel
    @passengers = @vessel.passengers
  end


  private

  def get_vessel
    vessel = params[:vessel]
    vessel.constantize.find(params["#{vessel.downcase}_id".to_sym])
  end

end

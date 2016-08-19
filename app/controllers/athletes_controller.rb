class AthletesController < ApplicationController

  def index
    @athletes = params([:athletable]).find(params[:id]).athletes
  end

end

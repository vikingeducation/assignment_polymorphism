class ResidentsController < ApplicationController
  def index
    @residency = params[:residency].classify.constantize.find(params[:house_id])
    @residents = @residency.residents
  end
end

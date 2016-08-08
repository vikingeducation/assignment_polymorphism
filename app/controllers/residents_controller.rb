class ResidentsController < ApplicationController
  def index
    type = params[:residency]
    type_id = "#{type}_id".downcase.to_sym
    @residency = type.classify.constantize.find(params[type_id])
    @residents = @residency.residents
  end
end

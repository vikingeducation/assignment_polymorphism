class PlantsController < ApplicationController

  def index
    @plants = params[:plantable].constantize
    .find(to_id_string).plants
  end

  private

    def to_id_string
      params["#{params[:plantable].downcase}_id"]
    end

end

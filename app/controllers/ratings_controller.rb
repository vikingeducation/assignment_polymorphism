class RatingsController < ApplicationController
  def index
    if params[:ratable]
      model = params[:ratable].classify.constantize
      ratable_id = params["#{model.model_name.param_key}_id".to_sym]
      @ratings = Rating.where('ratable_id = ? AND ratable_type = ?', ratable_id, params[:ratable])
    else
      @ratings = Rating.all
    end
  end
end

class HeadsController < ApplicationController

  def index
    model = params[:headable].classify.constantize
    headable_id = params["#{model.model_name.param_key}_id".to_sym]
    # headable_chars = params[:headable].classify.constantize
    @parent = model.find(headable_id)
  end

end

class VotesController < ApplicationController
  def index
    model_name = params[:votable]

    object_id_sym = (model_name.downcase + '_id').to_sym
    @object = model_name.constantize.find(params[object_id_sym])

    @votes = Vote.where(votable_type: model_name).where(votable_id: @object.id)
  end
end
class BabysittersController < ApplicationController


  def index
     id = params["babysitterable"].downcase+"_id"
     parent_id=params[id]

     # @babysitters = Babysitter.where("babysitterable_id = ?", parent_id)
    # parent_id=params[:adult_id]
    # @babysitters = extract_babysitterables.babysat_by


    @babysitters = Babysitter.where("babysitterable_id= ? AND babysitterable_type = ?", parent_id, params["babysitterable"])
  end

  private

  # def extract_babysitterables
  #   resource, id = request.path.split('/')[1,2]
  #   resource.singularize.classify.constantize.find(id)
  # end

end
    # app.url_for [:show, Babysitter.first, :babysitterable]

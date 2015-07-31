class BabysittersController < ApplicationController


  def index

    @babysitters = extract_babysitterables.babysat_by

    # #our hacky, fragile method
    # id_type = params["thing_type"].downcase+"_id"
    # parent_id=params[id_type]
    # @babysitters = Babysitter.where("babysitterable_id= ? AND babysitterable_type = ?", parent_id, params["thing_type"])
  end

  private

  def extract_babysitterables
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end

end


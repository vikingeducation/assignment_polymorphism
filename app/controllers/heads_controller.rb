class HeadsController < ApplicationController

  def index
    resource, id = request.path.split('/')[1,2]
    @parent = params[:commentable].classify.constantize.find(params[id])
  end

end

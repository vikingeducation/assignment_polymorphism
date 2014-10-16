class IceCreamScoopsController < ApplicationController
  before_action :extract_container


  def index
    @scoops = @container ? @container.ice_cream_scoops : IceCreamScoop.all
  end




private

  def extract_container
    resource, id = request.path.split('/')[1,2]

    unless id.nil?
      @container = resource.singularize.classify.constantize.find(id)
    end
  end

end

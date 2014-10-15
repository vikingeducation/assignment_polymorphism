class ToppingsController < ApplicationController
  def index
    @toppings = extract_toppable.toppings
  end

  private
  def extract_toppable
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end
end

class DishesController < ApplicationController
  def index
    @parent = params[:dishable]
    @dishes = @parent.singularize.classify.constantize.find(params[:breakfast_order_id]).dishes
  end
end

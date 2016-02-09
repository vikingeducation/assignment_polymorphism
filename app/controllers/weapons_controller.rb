class WeaponsController < ApplicationController

  def index
    @weapons = Gun.all + Candlestick.all + Knife.all
  end

  def children
    klass = params[:type].classify.constantize
    @murderings = klass.find(params[:id]).murderings
    @weapon = klass.find(params[:id]).name
  end

end

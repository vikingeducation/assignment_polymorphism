class BuzzsController < ApplicationController
  def index
    @buzzs = Buzz.all
  end

  def show
    @buzz = Buzz.find(params[:id])
  end
end

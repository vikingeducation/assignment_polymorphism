class DeerController < ApplicationController

  def index
    @Deer = Deer.all
  end


end

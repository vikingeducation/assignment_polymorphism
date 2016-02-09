class GunsController < ApplicationController

  def children
    @murderings = Gun.find(params[:id]).murderings
  end


end

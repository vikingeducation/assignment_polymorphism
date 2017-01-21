class SongsController < ApplicationController

  def index
    @medium = params[:medium].constantize.find(params[:"#{params[:medium].downcase}_id"])
  end

end

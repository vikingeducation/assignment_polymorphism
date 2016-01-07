class SmartsController < ApplicationController
  def index
    @smarts = Smart.all
  end

  def show
    @smart = Smart.find(params[:id])
  end
end

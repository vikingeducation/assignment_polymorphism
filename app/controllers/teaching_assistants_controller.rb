class TeachingAssistantsController < ApplicationController
  def index
    td = params[:teach_duty]
    @parent = td.constantize.find(params["#{td.downcase}_id"])
  end
end

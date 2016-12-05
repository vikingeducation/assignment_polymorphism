class CollegesController < ApplicationController

  def index
    @teachers = extract_institution.teachers
  end

  private
    def extract_institution
      params[:institution].classify.find(params[:id])
    end
end

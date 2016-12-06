class MiddleSchoolsController < ApplicationController

  def index
    @middle_schools = MiddleSchool.all
  end

end

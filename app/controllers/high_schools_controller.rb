class HighSchoolsController < ApplicationController

  def index
    @high_schools = HighSchool.all
  end

end

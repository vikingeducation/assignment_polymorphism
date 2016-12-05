class TeachersController < ApplicationController

  def index
    @teachers = extract_institution.teachers
  end

  private
    def extract_institution
      params[:institution].classify.constantize.find( institution_id )
    end

    def institution_id
      case params[:institution]
      when "College"      then params[:college_id]
      when "MiddleSchool" then params[:middle_school_id]
      when "HighSchool"   then params[:high_school_id]
      else "id"
      end
    end
end

class TeacherAssistantsController < ApplicationController
  def index
    course = Course.find(params[:course_id])
    @teacher_assistants = course.teacher_assistants
  end
end

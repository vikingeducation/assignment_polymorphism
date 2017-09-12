class StudentsController < ApplicationController
  def index
    @resource = params[:commentable]
    @resource_id = params["#{@resource.underscore}_id".to_sym]
    class_name = @resource.constantize

    @students = class_name.find(@resource_id).students
  end
end

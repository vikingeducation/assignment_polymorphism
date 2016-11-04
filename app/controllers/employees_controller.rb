class EmployeesController < ApplicationController

  def index
    @employees = extract_employable.employees
  end

  private

  def extract_employable
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end

end

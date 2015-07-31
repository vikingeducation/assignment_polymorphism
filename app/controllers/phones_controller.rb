class PhonesController < ApplicationController

  def index
    @phones = extract_callable.phones
  end

  def show
    @phone = Phone.find(params[:id])
  end

  private

  def extract_callable
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end

end

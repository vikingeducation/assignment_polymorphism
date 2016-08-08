class AthletesController < ApplicationController

  def index
    # @athletes = params[:athletable].find(params[:country_id]).athletes
    @athletes = extract_athletable.athletes
  end

  private

    def extract_athletable
      resource, id = request.path.split('/')[1,2]
      resource.singularize
              .classify
              .constantize
              .find(id)
    end

end

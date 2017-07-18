class AddressesController < ApplicationController

  def index
    @addresses = extract_stored_addresses.addresses
  end 

  private

  def extract_stored_addresses
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end

end

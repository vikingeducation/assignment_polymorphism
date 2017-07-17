class AddressesController < ApplicationController
  def index
    @addresses = extract_stored_address.addresses
  end

  private
  def extract_stored_address
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classity.constantize.find(id)
  end
end

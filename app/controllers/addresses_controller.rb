class AddressesController < ApplicationController
  def index
    @addresses = extract_addressable.addresses
  end

  private

  def extract_addressable
   # the `request` object contains all the HTTP parameters
    # we were sent.  Among the many things you can dig into
    # it to find, you can also locate the path that we were
    # originally sent on, as we're doing here.
    # We also use multiple assignment to grab the second
    # e.g. "company" and third e.g. "1" elements of that path
    # for use in the next part to help find the actual object
    # which we're trying to find the addresses for
    resource, id = request.path.split('/')[1,2]



    # This isn't an ideal method because it depends on the URL being exactly in the form /addressable_resource/:addressable_id/addresses, so don't feel bad if you've come up with your own way of figuring out which parent to present address for if using RESTful routing with nested resources.

     # the `singularize` method turns plurals singular
    # the `classify` method turns snake_case into CamelCase
    # the `constantize` method locates a class by that name
    # resource.singularize.classify.constantize.find(id)
    resource.singularize.classify.constantize.find(id)
  end


end

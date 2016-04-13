class ItemsController < ApplicationController

  # Build an extremely simple INDEX view for the Child which displays all the children for that parent (e.g. /a_parent/1/children shows a_parent's children only). Use the techniques in the polymorphism lesson for identifying which parent is "asking" for its children.
  def index
    @items = Item.where(:vendor_type => params[:vendor_type].classify).where(:vendor_id => params["#{params[:vendor_type]}_id"])
  end
end

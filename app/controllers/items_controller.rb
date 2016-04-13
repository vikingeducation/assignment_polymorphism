class ItemsController < ApplicationController

  # Build an extremely simple INDEX view for the Child which displays all the children for that parent (e.g. /a_parent/1/children shows a_parent's children only). Use the techniques in the polymorphism lesson for identifying which parent is "asking" for its children.
  def index
    asdfas
    @items = Item.where(:vendor_type => params)
  end
end

class TagsController < ApplicationController

  before_action :set_parent, only: [:index]

  def index
    @tags = @parent.tags
  end

  private

  def set_parent
    klass_name = params[:taggable]
    parent_key = params.keys.select{|k| k.match(klass_name.downcase + '_id')}.first

    id = params[parent_key]
    @parent = klass_name.constantize.find(id)
  end

end




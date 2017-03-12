class SinglesController < ApplicationController
  def index
    @singles = Single.all
    render partial: 'shared/releases', locals: {title: 'Album', releases: @singles}
  end
end

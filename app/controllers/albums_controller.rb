class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render partial: 'shared/releases', locals: {title: 'Album', releases: @albums}
  end
end

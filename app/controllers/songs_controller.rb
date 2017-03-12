class SongsController < ApplicationController
  def index
    @release = get_release
    @songs = @release.songs
  end

  private

  def get_release
    case params[:type]
    when 'Album' then
      Album.find(params[:album_id])
    when 'Single' then
      Single.find(params[:single_id])
    end
  end
end

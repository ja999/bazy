class AlbumsController < MuulibController
  prepend_view_path 'app/views/muulib'

  expose :album
  expose :albums
  expose(:songs_to_show){ Song.where(album_id: nil) + album.songs }

  def index
  end

  def create
    if album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def update
    if album.save
      redirect_to albums_path
    else
      render :edit
    end
  end

  def destroy
    album.destroy
    redirect_to albums_path
  end
end

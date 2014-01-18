class AlbumsController < MuulibController
  prepend_view_path 'app/views/muulib'

  expose :album
  expose :artists

  def index
  end

  def create
    if album.save
      redirect_to muulib_path
    else
      render :new
    end
  end

  def update
    if album.save
      redirect_to muulib_path
    else
      render :edit
    end
  end

  def destroy
    album.destroy
    redirect_to muulib_path
  end
end

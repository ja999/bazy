class ArtistsController < MuulibController
  prepend_view_path 'app/views/muulib'

  expose :artist
  expose :artists

  def index
  end

  def create
    if artist.save
      redirect_to muulib_path
    else
      render :new
    end
  end

  def update
    if artist.save
      redirect_to muulib_path
    else
      render :edit
    end
  end

  def destroy
    artist.destroy
    redirect_to muulib_path
  end
end

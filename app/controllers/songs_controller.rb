class SongsController < MuulibController
  prepend_view_path 'app/views/blog'

  expose :song
  expose :songs

  def index
  end

  def create
    if song.save
      redirect_to muulib_path
    else
      render :new
    end
  end

  def update
    if song.save
      redirect_to muulib_path
    else
      render :edit
    end
  end

  def destroy
    song.destroy
    redirect_to muulib_path
  end
end

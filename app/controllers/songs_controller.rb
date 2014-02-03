class SongsController < MuulibController
  prepend_view_path 'app/views/muulib'

  expose :song
  expose(:songs){ params[:sort_by] ? Song.order(params[:sort_by]) : Song.order('created_at') }

  def index
  end

  def create
    if song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def update
    if song.save
      redirect_to songs_path
    else
      render :edit
    end
  end

  def destroy
    song.destroy
    redirect_to songs_path
  end
end

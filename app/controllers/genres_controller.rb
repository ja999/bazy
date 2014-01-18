class GenresController < MuulibController
  prepend_view_path 'app/views/muulib'

  expose :genre
  expose :genres

  def index
  end

  def create
    if genre.save
      redirect_to muulib_path
    else
      render :new
    end
  end

  def update
    if genre.save
      redirect_to muulib_path
    else
      render :edit
    end
  end

  def destroy
    genre.destroy
    redirect_to muulib_path
  end
end

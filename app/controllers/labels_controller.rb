class LabelsController < MuulibController
  prepend_view_path 'app/views/blog'

  expose :label
  expose :labels

  def index
  end

  def create
    if label.save
      redirect_to muulib_path
    else
      render :new
    end
  end

  def update
    if label.save
      redirect_to muulib_path
    else
      render :edit
    end
  end

  def destroy
    label.destroy
    redirect_to muulib_path
  end
end

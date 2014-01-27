class RecordLabelsController < MuulibController
  prepend_view_path 'app/views/muulib'

  expose :record_label
  expose :record_labels

  def index
  end

  def new
  end

  def create
    if record_label.save
      redirect_to muulib_path
    else
      render :new
    end
  end

  def update
    if record_label.save
      redirect_to muulib_path
    else
      render :edit
    end
  end

  def destroy
    record_label.destroy
    redirect_to muulib_path
  end
end

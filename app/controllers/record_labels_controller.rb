class RecordLabelsController < MuulibController
  prepend_view_path 'app/views/muulib'

  expose :record_label
  expose :record_labels
  expose(:albums_to_show){ Album.where(record_label_id: nil) + record_label.albums }

  def index
  end

  def new
  end

  def create
    if record_label.save
      redirect_to record_labels_path
    else
      render :new
    end
  end

  def update
    if record_label.save
      redirect_to record_labels_path
    else
      render :edit
    end
  end

  def destroy
    record_label.destroy
    redirect_to record_labels_path
  end
end

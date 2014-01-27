class RemaneLabelsToRecordLabels < ActiveRecord::Migration
  def self.up
    rename_table :labels, :record_labels
  end

 def self.down
    rename_table :record_labels, :labels
 end
end

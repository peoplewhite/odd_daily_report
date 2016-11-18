class RenameImagableIdAndImagableTypeFromImages < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :imagable_id, :imageable_id
    rename_column :images, :imagable_type, :imageable_type
  end
end

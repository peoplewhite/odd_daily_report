class AddImagableIdAndImagableTypeToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :imagable_id, :integer
    add_column :images, :imagable_type, :string
  end
end

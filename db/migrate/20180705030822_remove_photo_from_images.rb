class RemovePhotoFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :photo, :string
  end
end

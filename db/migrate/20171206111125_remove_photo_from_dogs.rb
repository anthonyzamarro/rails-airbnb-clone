class RemovePhotoFromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :photo
  end
end

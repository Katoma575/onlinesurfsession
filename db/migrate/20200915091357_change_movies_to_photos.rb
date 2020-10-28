class ChangeMoviesToPhotos < ActiveRecord::Migration[5.2]
  def change
    rename_table :movies, :photos
  end
end

class ChangePhotosToMovies < ActiveRecord::Migration[5.2]
  def change
    rename_table :photos, :movies
  end
end

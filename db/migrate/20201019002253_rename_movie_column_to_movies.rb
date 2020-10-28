class RenameMovieColumnToMovies < ActiveRecord::Migration[5.2]
  def change
    rename_column :movies, :movie, :video_id
  end
end

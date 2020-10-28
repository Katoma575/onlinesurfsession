class RenameMovieIdColumnToComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :movie_id, :photo_id
  end
end

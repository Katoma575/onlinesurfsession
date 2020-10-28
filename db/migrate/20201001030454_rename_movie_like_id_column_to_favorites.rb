class RenameMovieLikeIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :movie_like_id, :movie_id
  end
end

class RenameUserLikeIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :user_like_id, :user_id
  end
end

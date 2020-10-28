class ChangeDataVideoIdToMovies < ActiveRecord::Migration[5.2]
  def change
    change_column :movies, :video_id, :string
  end
end

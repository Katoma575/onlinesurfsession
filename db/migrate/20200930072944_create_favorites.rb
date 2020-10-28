class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_like_id
      t.integer :movie_like_id

      t.timestamps
    end
  end
end
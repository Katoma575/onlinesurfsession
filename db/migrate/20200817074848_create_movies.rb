class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string  :movie, null: false
      t.integer :datetime
      t.string  :place
      t.text    :self_comment
      t.integer :user_id
      t.timestamps
    end
  end
end

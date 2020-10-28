class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.timestamps
      t.integer  :movie_id
      t.integer   :point     
      t.text      :comment   
      t.integer   :user_id   
    end
  end
end

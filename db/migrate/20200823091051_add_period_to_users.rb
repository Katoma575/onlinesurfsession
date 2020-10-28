class AddPeriodToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :period, :integer
  end
end

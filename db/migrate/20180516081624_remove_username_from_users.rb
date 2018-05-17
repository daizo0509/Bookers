class RemoveUsernameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :username, :sting
  end
end

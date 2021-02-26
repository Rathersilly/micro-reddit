class RemoveUserStringFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :user
  end
end

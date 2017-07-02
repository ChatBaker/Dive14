class AddUserIdToInsta < ActiveRecord::Migration[5.1]
  def change
    add_column :insta, :user_id, :integer
  end
end

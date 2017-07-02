class AddImagegToInsta < ActiveRecord::Migration[5.1]
  def change
    add_column :insta, :image, :text
  end
end

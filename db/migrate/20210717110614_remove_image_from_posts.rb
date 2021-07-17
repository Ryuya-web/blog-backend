class RemoveImageFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :thumbnail_image, :text
    remove_column :posts, :image, :text
  end
end

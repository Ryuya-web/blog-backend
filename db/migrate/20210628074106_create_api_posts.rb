class CreateApiPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :api_posts do |t|

      t.timestamps
    end
  end
end

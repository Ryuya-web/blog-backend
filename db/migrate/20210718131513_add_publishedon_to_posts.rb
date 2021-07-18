class AddPublishedonToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :publised_on, :datetime
  end
end

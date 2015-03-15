class AddNextPostIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :next_post_id, :integer
  end
end

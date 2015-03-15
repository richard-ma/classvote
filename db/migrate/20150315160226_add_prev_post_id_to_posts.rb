class AddPrevPostIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :prev_post_id, :integer
  end
end

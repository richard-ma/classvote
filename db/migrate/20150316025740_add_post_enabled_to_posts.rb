class AddPostEnabledToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post_enabled, :boolean, :default => FALSE
  end
end

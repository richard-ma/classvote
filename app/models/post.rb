class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  has_attached_file :media

  def enabled?
    self.post_enabled
  end

  def enable
    self.post_enabled = true
  end

  def disable
    self.post_enabled = false
  end
end

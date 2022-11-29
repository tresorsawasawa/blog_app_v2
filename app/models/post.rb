class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  after_save :updates_posts_counter

  private

  def  updates_posts_counter
    posts.increament!(:posts_counter)
  end
end

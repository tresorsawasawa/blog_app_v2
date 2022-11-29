class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  after_save :update_posts_counter

  def recent_comments
    comments.order(create_at: :desc).limit(5)
  end

  private

  def  update_posts_counter
    author.increament!(:posts_counter)
  end
end

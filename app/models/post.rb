# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :post_heart

  def self.user_posts(current_user)
    where(user: current_user)
      .order(created_at: :desc)
      .collect do |post|
         {
          id: post.id,
          title: post[:title],
          content: post[:content].split(" ").first(20).join(" "),
          email: post.user.email,
          created_at: post.created_at,
          comment_count: post.comments.count,
          post_heart_count: post.post_heart.count
         }
      end
  end
end

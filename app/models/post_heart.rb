class PostHeart < ApplicationRecord
  acts_as_paranoid

  belongs_to :post
  belongs_to :user
end

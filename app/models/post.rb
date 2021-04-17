class Post < ApplicationRecord
  has_many :comments
  scope :likes_count_per_id, -> {
    joins(:comments)
    .select(
      "posts.id,
      posts.name,
      SUM(comments.positive_count) as sum_positive,
      SUM(comments.negative_count) as sum_negative"
    ).group(:id)
  }
end
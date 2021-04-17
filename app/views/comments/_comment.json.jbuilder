json.extract! comment, :id, :name, :post_id, :positive_count, :negative_count, :created_at, :updated_at
json.url comment_url(comment, format: :json)

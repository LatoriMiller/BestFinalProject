json.extract! comment, :id, :author, :comment_entry, :ad_id, :user_id, :category_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
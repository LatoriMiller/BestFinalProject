json.extract! ad, :id, :title, :author, :content, :user_id, :category_id, :created_at, :updated_at
json.url ad_url(ad, format: :json)
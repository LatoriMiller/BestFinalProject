json.extract! ad, :id, :title, :price, :description, :image, :user_id, :category_id, :created_at, :updated_at
json.url ad_url(ad, format: :json)
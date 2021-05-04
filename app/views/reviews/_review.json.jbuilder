json.extract! review, :id, :salon_id, :name, :detail, :created_at, :updated_at
json.url review_url(review, format: :json)

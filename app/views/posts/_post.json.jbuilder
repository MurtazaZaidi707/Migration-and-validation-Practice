json.extract! post, :id, :title, :body, :age, :email, :created_at, :updated_at
json.url post_url(post, format: :json)

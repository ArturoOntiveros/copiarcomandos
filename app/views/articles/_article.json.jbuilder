json.extract! article, :id, :cretor, :title, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
json.extract! comentario, :id, :Article_id, :body, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
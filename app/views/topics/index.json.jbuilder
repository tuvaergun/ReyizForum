json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :user_id
  json.url topic_url(topic, format: :json)
end

json.array!(@news) do |news|
  json.extract! news, :id, :title, :url
  json.url news_url(news, format: :json)
end

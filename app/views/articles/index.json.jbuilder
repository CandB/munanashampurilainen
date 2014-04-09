json.array!(@articles) do |article|
  json.extract! article, :id, :author, :title, :journal, :year
  json.url article_url(article, format: :json)
end

json.array!(@articles) do |article|
  json.extract! article, :id, :auhtor, :title, :published, :article_content
  json.url article_url(article, format: :json)
end

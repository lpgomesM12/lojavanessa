json.array!(@cors) do |cor|
  json.extract! cor, :id, :nome
  json.url cor_url(cor, format: :json)
end

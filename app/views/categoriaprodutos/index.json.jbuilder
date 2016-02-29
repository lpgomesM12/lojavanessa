json.array!(@categoriaprodutos) do |categoriaproduto|
  json.extract! categoriaproduto, :id, :nome
  json.url categoriaproduto_url(categoriaproduto, format: :json)
end

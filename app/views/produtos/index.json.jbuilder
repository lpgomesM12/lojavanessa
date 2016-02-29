json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome_produto, :desc_produto, :valr_compra, :valr_sugeridovenda, :categoriaproduto_id, :cor_id
  json.url produto_url(produto, format: :json)
end

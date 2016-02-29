json.array!(@exemplaresprodutos) do |exemplaresproduto|
  json.extract! exemplaresproduto, :id, :numr_numeracao, :numr_quantidade, :produto_id
  json.url exemplaresproduto_url(exemplaresproduto, format: :json)
end

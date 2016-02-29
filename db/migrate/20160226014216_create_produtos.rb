class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome_produto
      t.string :desc_produto
      t.decimal :valr_compra
      t.decimal :valr_sugeridovenda
      t.references :categoriaproduto, index: true, foreign_key: true
      t.references :cor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

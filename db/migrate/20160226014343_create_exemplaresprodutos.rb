class CreateExemplaresprodutos < ActiveRecord::Migration
  def change
    create_table :exemplaresprodutos do |t|
      t.integer :numr_numeracao
      t.integer :numr_quantidade
      t.references :produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

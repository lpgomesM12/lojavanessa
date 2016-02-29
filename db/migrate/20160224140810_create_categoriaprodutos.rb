class CreateCategoriaprodutos < ActiveRecord::Migration
  def change
    create_table :categoriaprodutos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end

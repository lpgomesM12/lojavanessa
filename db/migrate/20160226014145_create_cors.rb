class CreateCors < ActiveRecord::Migration
  def change
    create_table :cors do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end

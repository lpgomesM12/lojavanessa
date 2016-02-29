class AddAttachmentImageToFotoprodutos < ActiveRecord::Migration
  def self.up
    change_table :fotoprodutos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fotoprodutos, :image
  end
end

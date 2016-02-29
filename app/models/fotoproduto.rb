class Fotoproduto < ActiveRecord::Base
  belongs_to :produto

    #Desenvolvimento
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, default_url: "/images/normal/missing.png"

  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
end

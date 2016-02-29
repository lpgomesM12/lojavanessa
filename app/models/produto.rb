class Produto < ActiveRecord::Base
  belongs_to :categoriaproduto
  belongs_to :cor

  has_many :fotoproduto, :dependent => :destroy
  accepts_nested_attributes_for :fotoproduto, :reject_if => lambda { |t| t['image'].nil? }

end

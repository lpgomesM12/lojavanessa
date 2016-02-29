class SiteController < ApplicationController
  def index
  	 @produtos = Produto.all
  end

  def show_produto
  	 @produto = Produto.find(params[:id])
  end

end

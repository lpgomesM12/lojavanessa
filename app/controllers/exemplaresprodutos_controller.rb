class ExemplaresprodutosController < ApplicationController
  before_action :set_exemplaresproduto, only: [:show, :edit, :update, :destroy]

  

  def carrega_exemplares
     exemplaresprodutos = Exemplaresproduto.where(produto_id: params[:produto_id])
     json_exemplaresprodutos = exemplaresprodutos.map { |item| {:id => item.id,
                                                       :numr_numeracao => item.numr_numeracao,
                                                       :numr_quantidade => item.numr_quantidade}}
     render :json => json_exemplaresprodutos
  end 

  def exclui_exemplares
     @exemplaresprodutos = Exemplaresproduto.find(params[:id])
     @exemplaresprodutos.destroy
     render :json => true
  
  end 


  def salva_exemplares

   @exemplaresprodutos = Exemplaresproduto.new
   @exemplaresprodutos.numr_numeracao = params[:numr_numeracao]
   @exemplaresprodutos.numr_quantidade = params[:numr_quantidade]
   @exemplaresprodutos.produto_id = params[:produto_id]

   @exemplaresprodutos.save

   render :json => true    

  end

  def editar_exemplar
   @exemplaresprodutos = Exemplaresproduto.find(params[:id])
   @exemplaresprodutos.numr_numeracao = params[:numr_numeracao]
   @exemplaresprodutos.numr_quantidade = params[:numr_quantidade]

   @exemplaresprodutos.save

   render :json => true    

  end

  def busca_exemplar
     @exemplaresprodutos = Exemplaresproduto.find(params[:id])
     
     render :json => @exemplaresprodutos
  end

  # GET /exemplaresprodutos
  # GET /exemplaresprodutos.json
  def index
    @exemplaresprodutos = Exemplaresproduto.all
  end

  # GET /exemplaresprodutos/1
  # GET /exemplaresprodutos/1.json
  def show
  end

  # GET /exemplaresprodutos/new
  def new
    @exemplaresproduto = Exemplaresproduto.new
  end

  # GET /exemplaresprodutos/1/edit
  def edit
  end

  # POST /exemplaresprodutos
  # POST /exemplaresprodutos.json
  def create
    @exemplaresproduto = Exemplaresproduto.new(exemplaresproduto_params)

    respond_to do |format|
      if @exemplaresproduto.save
        format.html { redirect_to @exemplaresproduto, notice: 'Exemplaresproduto was successfully created.' }
        format.json { render :show, status: :created, location: @exemplaresproduto }
      else
        format.html { render :new }
        format.json { render json: @exemplaresproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exemplaresprodutos/1
  # PATCH/PUT /exemplaresprodutos/1.json
  def update
    respond_to do |format|
      if @exemplaresproduto.update(exemplaresproduto_params)
        format.html { redirect_to @exemplaresproduto, notice: 'Exemplaresproduto was successfully updated.' }
        format.json { render :show, status: :ok, location: @exemplaresproduto }
      else
        format.html { render :edit }
        format.json { render json: @exemplaresproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemplaresprodutos/1
  # DELETE /exemplaresprodutos/1.json
  def destroy
    @exemplaresproduto.destroy
    respond_to do |format|
      format.html { redirect_to exemplaresprodutos_url, notice: 'Exemplaresproduto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exemplaresproduto
      @exemplaresproduto = Exemplaresproduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exemplaresproduto_params
      params.require(:exemplaresproduto).permit(:numr_numeracao, :numr_quantidade, :produto_id)
    end
end

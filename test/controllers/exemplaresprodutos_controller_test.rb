require 'test_helper'

class ExemplaresprodutosControllerTest < ActionController::TestCase
  setup do
    @exemplaresproduto = exemplaresprodutos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exemplaresprodutos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exemplaresproduto" do
    assert_difference('Exemplaresproduto.count') do
      post :create, exemplaresproduto: { numr_numeracao: @exemplaresproduto.numr_numeracao, numr_quantidade: @exemplaresproduto.numr_quantidade, produto_id: @exemplaresproduto.produto_id }
    end

    assert_redirected_to exemplaresproduto_path(assigns(:exemplaresproduto))
  end

  test "should show exemplaresproduto" do
    get :show, id: @exemplaresproduto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exemplaresproduto
    assert_response :success
  end

  test "should update exemplaresproduto" do
    patch :update, id: @exemplaresproduto, exemplaresproduto: { numr_numeracao: @exemplaresproduto.numr_numeracao, numr_quantidade: @exemplaresproduto.numr_quantidade, produto_id: @exemplaresproduto.produto_id }
    assert_redirected_to exemplaresproduto_path(assigns(:exemplaresproduto))
  end

  test "should destroy exemplaresproduto" do
    assert_difference('Exemplaresproduto.count', -1) do
      delete :destroy, id: @exemplaresproduto
    end

    assert_redirected_to exemplaresprodutos_path
  end
end

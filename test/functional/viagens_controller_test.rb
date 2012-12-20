require 'test_helper'

class ViagensControllerTest < ActionController::TestCase
  setup do
    @viagem = viagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viagem" do
    assert_difference('Viagem.count') do
      post :create, viagem: { distancia: @viagem.distancia, motora: @viagem.motora, retorno: @viagem.retorno, saida: @viagem.saida, titulo: @viagem.titulo, valor_contrato: @viagem.valor_contrato }
    end

    assert_redirected_to viagem_path(assigns(:viagem))
  end

  test "should show viagem" do
    get :show, id: @viagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @viagem
    assert_response :success
  end

  test "should update viagem" do
    put :update, id: @viagem, viagem: { distancia: @viagem.distancia, motora: @viagem.motora, retorno: @viagem.retorno, saida: @viagem.saida, titulo: @viagem.titulo, valor_contrato: @viagem.valor_contrato }
    assert_redirected_to viagem_path(assigns(:viagem))
  end

  test "should destroy viagem" do
    assert_difference('Viagem.count', -1) do
      delete :destroy, id: @viagem
    end

    assert_redirected_to viagens_path
  end
end

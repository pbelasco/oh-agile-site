require 'test_helper'

class HabilidadesControllerTest < ActionController::TestCase
  setup do
    @habilidade = habilidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habilidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habilidade" do
    assert_difference('Habilidade.count') do
      post :create, habilidade: { nome: @habilidade.nome, tipo: @habilidade.tipo }
    end

    assert_redirected_to habilidade_path(assigns(:habilidade))
  end

  test "should show habilidade" do
    get :show, id: @habilidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habilidade
    assert_response :success
  end

  test "should update habilidade" do
    put :update, id: @habilidade, habilidade: { nome: @habilidade.nome, tipo: @habilidade.tipo }
    assert_redirected_to habilidade_path(assigns(:habilidade))
  end

  test "should destroy habilidade" do
    assert_difference('Habilidade.count', -1) do
      delete :destroy, id: @habilidade
    end

    assert_redirected_to habilidades_path
  end
end

require 'test_helper'

class LocaisControllerTest < ActionController::TestCase
  setup do
    @local = locais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local" do
    assert_difference('Local.count') do
      post :create, local: { cep: @local.cep, cidade: @local.cidade, lat: @local.lat, lon: @local.lon, nome: @local.nome, numero: @local.numero, rua: @local.rua, uf: @local.uf }
    end

    assert_redirected_to local_path(assigns(:local))
  end

  test "should show local" do
    get :show, id: @local
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local
    assert_response :success
  end

  test "should update local" do
    put :update, id: @local, local: { cep: @local.cep, cidade: @local.cidade, lat: @local.lat, lon: @local.lon, nome: @local.nome, numero: @local.numero, rua: @local.rua, uf: @local.uf }
    assert_redirected_to local_path(assigns(:local))
  end

  test "should destroy local" do
    assert_difference('Local.count', -1) do
      delete :destroy, id: @local
    end

    assert_redirected_to locais_path
  end
end

require 'test_helper'

class TripulantesControllerTest < ActionController::TestCase
  setup do
    @tripulante = tripulantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tripulantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tripulante" do
    assert_difference('Tripulante.count') do
      post :create, tripulante: { bio: @tripulante.bio, cpf: @tripulante.cpf, email: @tripulante.email, facebook: @tripulante.facebook, foto: @tripulante.foto, genero: @tripulante.genero, nascimento: @tripulante.nascimento, nome: @tripulante.nome, rg: @tripulante.rg, telefone: @tripulante.telefone, twitter: @tripulante.twitter }
    end

    assert_redirected_to tripulante_path(assigns(:tripulante))
  end

  test "should show tripulante" do
    get :show, id: @tripulante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tripulante
    assert_response :success
  end

  test "should update tripulante" do
    put :update, id: @tripulante, tripulante: { bio: @tripulante.bio, cpf: @tripulante.cpf, email: @tripulante.email, facebook: @tripulante.facebook, foto: @tripulante.foto, genero: @tripulante.genero, nascimento: @tripulante.nascimento, nome: @tripulante.nome, rg: @tripulante.rg, telefone: @tripulante.telefone, twitter: @tripulante.twitter }
    assert_redirected_to tripulante_path(assigns(:tripulante))
  end

  test "should destroy tripulante" do
    assert_difference('Tripulante.count', -1) do
      delete :destroy, id: @tripulante
    end

    assert_redirected_to tripulantes_path
  end
end

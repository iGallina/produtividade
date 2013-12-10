require 'test_helper'

class RenomearsControllerTest < ActionController::TestCase
  setup do
    @renomear = renomears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:renomears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create renomear" do
    assert_difference('Renomear.count') do
      post :create, renomear: { arquivo: @renomear.arquivo, assunto: @renomear.assunto, cprod: @renomear.cprod, data: @renomear.data, mais_de_um_processo: @renomear.mais_de_um_processo, sem_cprod: @renomear.sem_cprod, tipo: @renomear.tipo }
    end

    assert_redirected_to renomear_path(assigns(:renomear))
  end

  test "should show renomear" do
    get :show, id: @renomear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @renomear
    assert_response :success
  end

  test "should update renomear" do
    patch :update, id: @renomear, renomear: { arquivo: @renomear.arquivo, assunto: @renomear.assunto, cprod: @renomear.cprod, data: @renomear.data, mais_de_um_processo: @renomear.mais_de_um_processo, sem_cprod: @renomear.sem_cprod, tipo: @renomear.tipo }
    assert_redirected_to renomear_path(assigns(:renomear))
  end

  test "should destroy renomear" do
    assert_difference('Renomear.count', -1) do
      delete :destroy, id: @renomear
    end

    assert_redirected_to renomears_path
  end
end

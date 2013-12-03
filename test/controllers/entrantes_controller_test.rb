require 'test_helper'

class EntrantesControllerTest < ActionController::TestCase
  setup do
    @entrante = entrantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrante" do
    assert_difference('Entrante.count') do
      post :create, entrante: { area: @entrante.area, assunto: @entrante.assunto, dt_procedimento: @entrante.dt_procedimento, dt_prot_doc: @entrante.dt_prot_doc, procedimento: @entrante.procedimento, processo_principal: @entrante.processo_principal, prot_doc: @entrante.prot_doc }
    end

    assert_redirected_to entrante_path(assigns(:entrante))
  end

  test "should show entrante" do
    get :show, id: @entrante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrante
    assert_response :success
  end

  test "should update entrante" do
    patch :update, id: @entrante, entrante: { area: @entrante.area, assunto: @entrante.assunto, dt_procedimento: @entrante.dt_procedimento, dt_prot_doc: @entrante.dt_prot_doc, procedimento: @entrante.procedimento, processo_principal: @entrante.processo_principal, prot_doc: @entrante.prot_doc }
    assert_redirected_to entrante_path(assigns(:entrante))
  end

  test "should destroy entrante" do
    assert_difference('Entrante.count', -1) do
      delete :destroy, id: @entrante
    end

    assert_redirected_to entrantes_path
  end
end

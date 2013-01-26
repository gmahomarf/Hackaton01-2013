require 'test_helper'

class DenunciaTiposControllerTest < ActionController::TestCase
  setup do
    @denuncia_tipo = denuncia_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:denuncia_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create denuncia_tipo" do
    assert_difference('DenunciaTipo.count') do
      post :create, denuncia_tipo: { nombre: @denuncia_tipo.nombre }
    end

    assert_redirected_to denuncia_tipo_path(assigns(:denuncia_tipo))
  end

  test "should show denuncia_tipo" do
    get :show, id: @denuncia_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @denuncia_tipo
    assert_response :success
  end

  test "should update denuncia_tipo" do
    put :update, id: @denuncia_tipo, denuncia_tipo: { nombre: @denuncia_tipo.nombre }
    assert_redirected_to denuncia_tipo_path(assigns(:denuncia_tipo))
  end

  test "should destroy denuncia_tipo" do
    assert_difference('DenunciaTipo.count', -1) do
      delete :destroy, id: @denuncia_tipo
    end

    assert_redirected_to denuncia_tipos_path
  end
end

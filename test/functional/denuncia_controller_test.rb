require 'test_helper'

class DenunciaControllerTest < ActionController::TestCase
  setup do
    @denuncium = denuncia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:denuncia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create denuncium" do
    assert_difference('Denuncium.count') do
      post :create, denuncium: { descripcion_hechos: @denuncium.descripcion_hechos, estado: @denuncium.estado, fecha_incidente: @denuncium.fecha_incidente, fecha_primera_audiencia: @denuncium.fecha_primera_audiencia, fecha_segunda_audiencia: @denuncium.fecha_segunda_audiencia, fecha_sentencia: @denuncium.fecha_sentencia, observaciones: @denuncium.observaciones }
    end

    assert_redirected_to denuncium_path(assigns(:denuncium))
  end

  test "should show denuncium" do
    get :show, id: @denuncium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @denuncium
    assert_response :success
  end

  test "should update denuncium" do
    put :update, id: @denuncium, denuncium: { descripcion_hechos: @denuncium.descripcion_hechos, estado: @denuncium.estado, fecha_incidente: @denuncium.fecha_incidente, fecha_primera_audiencia: @denuncium.fecha_primera_audiencia, fecha_segunda_audiencia: @denuncium.fecha_segunda_audiencia, fecha_sentencia: @denuncium.fecha_sentencia, observaciones: @denuncium.observaciones }
    assert_redirected_to denuncium_path(assigns(:denuncium))
  end

  test "should destroy denuncium" do
    assert_difference('Denuncium.count', -1) do
      delete :destroy, id: @denuncium
    end

    assert_redirected_to denuncia_path
  end
end

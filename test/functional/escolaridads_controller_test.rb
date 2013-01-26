require 'test_helper'

class EscolaridadsControllerTest < ActionController::TestCase
  setup do
    @escolaridad = escolaridads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:escolaridads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create escolaridad" do
    assert_difference('Escolaridad.count') do
      post :create, escolaridad: { grado: @escolaridad.grado }
    end

    assert_redirected_to escolaridad_path(assigns(:escolaridad))
  end

  test "should show escolaridad" do
    get :show, id: @escolaridad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @escolaridad
    assert_response :success
  end

  test "should update escolaridad" do
    put :update, id: @escolaridad, escolaridad: { grado: @escolaridad.grado }
    assert_redirected_to escolaridad_path(assigns(:escolaridad))
  end

  test "should destroy escolaridad" do
    assert_difference('Escolaridad.count', -1) do
      delete :destroy, id: @escolaridad
    end

    assert_redirected_to escolaridads_path
  end
end

require 'test_helper'

class EtniasControllerTest < ActionController::TestCase
  setup do
    @etnia = etnias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etnias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etnia" do
    assert_difference('Etnia.count') do
      post :create, etnia: { nombre: @etnia.nombre }
    end

    assert_redirected_to etnia_path(assigns(:etnia))
  end

  test "should show etnia" do
    get :show, id: @etnia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etnia
    assert_response :success
  end

  test "should update etnia" do
    put :update, id: @etnia, etnia: { nombre: @etnia.nombre }
    assert_redirected_to etnia_path(assigns(:etnia))
  end

  test "should destroy etnia" do
    assert_difference('Etnia.count', -1) do
      delete :destroy, id: @etnia
    end

    assert_redirected_to etnias_path
  end
end

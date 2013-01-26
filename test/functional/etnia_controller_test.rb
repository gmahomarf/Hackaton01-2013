require 'test_helper'

class EtniaControllerTest < ActionController::TestCase
  setup do
    @etnium = etnia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etnia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etnium" do
    assert_difference('Etnia.count') do
      post :create, etnium: { nombre: @etnium.nombre }
    end

    assert_redirected_to etnium_path(assigns(:etnium))
  end

  test "should show etnium" do
    get :show, id: @etnium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etnium
    assert_response :success
  end

  test "should update etnium" do
    put :update, id: @etnium, etnium: { nombre: @etnium.nombre }
    assert_redirected_to etnium_path(assigns(:etnium))
  end

  test "should destroy etnium" do
    assert_difference('Etnia.count', -1) do
      delete :destroy, id: @etnium
    end

    assert_redirected_to etnias_path
  end
end

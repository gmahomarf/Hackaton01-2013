require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { apellido: @persona.apellido, casa: @persona.casa, cedula: @persona.cedula, discapacidad: @persona.discapacidad, fecha_nacimiento: @persona.fecha_nacimiento, hijas: @persona.hijas, hijos: @persona.hijos, incidentes: @persona.incidentes, ingreso_promedio: @persona.ingreso_promedio, jafatura_hogar: @persona.jafatura_hogar, lugar_nacimiento: @persona.lugar_nacimiento, nombre: @persona.nombre, ocupacion: @persona.ocupacion, reincidente: @persona.reincidente }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    put :update, id: @persona, persona: { apellido: @persona.apellido, casa: @persona.casa, cedula: @persona.cedula, discapacidad: @persona.discapacidad, fecha_nacimiento: @persona.fecha_nacimiento, hijas: @persona.hijas, hijos: @persona.hijos, incidentes: @persona.incidentes, ingreso_promedio: @persona.ingreso_promedio, jafatura_hogar: @persona.jafatura_hogar, lugar_nacimiento: @persona.lugar_nacimiento, nombre: @persona.nombre, ocupacion: @persona.ocupacion, reincidente: @persona.reincidente }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end

require 'test_helper'

class ManagersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get registrar" do
    get :registrar
    assert_response :success
  end

  test "should get mostrar" do
    get :mostrar
    assert_response :success
  end

  test "should get ingresar_resultado" do
    get :ingresar_resultado
    assert_response :success
  end

end

require 'test_helper'

class RedesControllerTest < ActionController::TestCase
  setup do
    @rede = redes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rede" do
    assert_difference('Rede.count') do
      post :create, rede: { epocas: @rede.epocas, peso1: @rede.peso1, peso2: @rede.peso2, peso3: @rede.peso3, peso4: @rede.peso4, peso5: @rede.peso5 }
    end

    assert_redirected_to rede_path(assigns(:rede))
  end

  test "should show rede" do
    get :show, id: @rede
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rede
    assert_response :success
  end

  test "should update rede" do
    put :update, id: @rede, rede: { epocas: @rede.epocas, peso1: @rede.peso1, peso2: @rede.peso2, peso3: @rede.peso3, peso4: @rede.peso4, peso5: @rede.peso5 }
    assert_redirected_to rede_path(assigns(:rede))
  end

  test "should destroy rede" do
    assert_difference('Rede.count', -1) do
      delete :destroy, id: @rede
    end

    assert_redirected_to redes_path
  end
end

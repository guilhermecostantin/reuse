require 'test_helper'

class MlpsControllerTest < ActionController::TestCase
  setup do
    @mlp = mlps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mlps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mlp" do
    assert_difference('Mlp.count') do
      post :create, mlp: { entrada1: @mlp.entrada1, entrada2: @mlp.entrada2, entrada3: @mlp.entrada3, entrada4: @mlp.entrada4, target1: @mlp.target1, target2: @mlp.target2, target3: @mlp.target3 }
    end

    assert_redirected_to mlp_path(assigns(:mlp))
  end

  test "should show mlp" do
    get :show, id: @mlp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mlp
    assert_response :success
  end

  test "should update mlp" do
    put :update, id: @mlp, mlp: { entrada1: @mlp.entrada1, entrada2: @mlp.entrada2, entrada3: @mlp.entrada3, entrada4: @mlp.entrada4, target1: @mlp.target1, target2: @mlp.target2, target3: @mlp.target3 }
    assert_redirected_to mlp_path(assigns(:mlp))
  end

  test "should destroy mlp" do
    assert_difference('Mlp.count', -1) do
      delete :destroy, id: @mlp
    end

    assert_redirected_to mlps_path
  end
end

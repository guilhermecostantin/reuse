require 'test_helper'

class TreinamentosControllerTest < ActionController::TestCase
  setup do
    @treinamento = treinamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treinamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treinamento" do
    assert_difference('Treinamento.count') do
      post :create, treinamento: { entrada1: @treinamento.entrada1, entrada2: @treinamento.entrada2, entrada3: @treinamento.entrada3, entrada4: @treinamento.entrada4, entrada5: @treinamento.entrada5, target: @treinamento.target }
    end

    assert_redirected_to treinamento_path(assigns(:treinamento))
  end

  test "should show treinamento" do
    get :show, id: @treinamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treinamento
    assert_response :success
  end

  test "should update treinamento" do
    put :update, id: @treinamento, treinamento: { entrada1: @treinamento.entrada1, entrada2: @treinamento.entrada2, entrada3: @treinamento.entrada3, entrada4: @treinamento.entrada4, entrada5: @treinamento.entrada5, target: @treinamento.target }
    assert_redirected_to treinamento_path(assigns(:treinamento))
  end

  test "should destroy treinamento" do
    assert_difference('Treinamento.count', -1) do
      delete :destroy, id: @treinamento
    end

    assert_redirected_to treinamentos_path
  end
end

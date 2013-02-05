require 'test_helper'

class ValidacaosControllerTest < ActionController::TestCase
  setup do
    @validacao = validacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:validacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create validacao" do
    assert_difference('Validacao.count') do
      post :create, validacao: { entrada1: @validacao.entrada1, entrada2: @validacao.entrada2, entrada3: @validacao.entrada3, entrada4: @validacao.entrada4, entrada5: @validacao.entrada5, target: @validacao.target }
    end

    assert_redirected_to validacao_path(assigns(:validacao))
  end

  test "should show validacao" do
    get :show, id: @validacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @validacao
    assert_response :success
  end

  test "should update validacao" do
    put :update, id: @validacao, validacao: { entrada1: @validacao.entrada1, entrada2: @validacao.entrada2, entrada3: @validacao.entrada3, entrada4: @validacao.entrada4, entrada5: @validacao.entrada5, target: @validacao.target }
    assert_redirected_to validacao_path(assigns(:validacao))
  end

  test "should destroy validacao" do
    assert_difference('Validacao.count', -1) do
      delete :destroy, id: @validacao
    end

    assert_redirected_to validacoes_path
  end
end

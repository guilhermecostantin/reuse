require 'test_helper'

class CookBooksControllerTest < ActionController::TestCase
  setup do
    @cook_book = cook_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cook_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cook_book" do
    assert_difference('CookBook.count') do
      post :create, cook_book: { nome: @cook_book.nome, tema: @cook_book.tema }
    end

    assert_redirected_to cook_book_path(assigns(:cook_book))
  end

  test "should show cook_book" do
    get :show, id: @cook_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cook_book
    assert_response :success
  end

  test "should update cook_book" do
    put :update, id: @cook_book, cook_book: { nome: @cook_book.nome, tema: @cook_book.tema }
    assert_redirected_to cook_book_path(assigns(:cook_book))
  end

  test "should destroy cook_book" do
    assert_difference('CookBook.count', -1) do
      delete :destroy, id: @cook_book
    end

    assert_redirected_to cook_books_path
  end
end

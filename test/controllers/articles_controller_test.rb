require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { description: @article.description, name: @article.name, owner_id: @article.owner_id, price: @article.price }
    end

    assert_response 201
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should update article" do
    put :update, id: @article, article: { description: @article.description, name: @article.name, owner_id: @article.owner_id, price: @article.price }
    assert_response 204
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_response 204
  end
end

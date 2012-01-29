require 'test_helper'

module Bawi
  class ArticlesControllerTest < ActionController::TestCase
    include Bawi::Engine.routes.url_helpers

    setup do
      @article = bawi_articles(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:articles)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create article" do
      assert_difference('Article.count') do
        new_article = bawi_articles(:two)
        new_article.article_no = 3
        post :create, article: new_article.attributes
      end
  
      assert_redirected_to article_path(assigns(:article))
    end
  
    test "should show article" do
      get :show, id: @article
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @article
      assert_response :success
    end
  
    test "should update article" do
      put :update, id: @article, article: @article.attributes
      assert_redirected_to article_path(assigns(:article))
    end
  
    test "should destroy article" do
      assert_difference('Article.count', -1) do
        delete :destroy, id: @article
      end
  
      assert_redirected_to articles_path
    end
  end
end

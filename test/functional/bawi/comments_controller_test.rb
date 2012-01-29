require 'test_helper'

module Bawi
  class CommentsControllerTest < ActionController::TestCase
    include Bawi::Engine.routes.url_helpers

    setup do
      @comment = bawi_comments(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:comments)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create comment" do
      assert_difference('Comment.count') do
        new_comment = bawi_comments(:two)
        new_comment.comment_no = 3
        post :create, comment: new_comment.attributes
      end
  
      assert_redirected_to comment_path(assigns(:comment))
    end
  
    test "should show comment" do
      get :show, id: @comment
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @comment
      assert_response :success
    end
  
    test "should update comment" do
      put :update, id: @comment, comment: @comment.attributes
      assert_redirected_to comment_path(assigns(:comment))
    end
  
    test "should destroy comment" do
      assert_difference('Comment.count', -1) do
        delete :destroy, id: @comment
      end
  
      assert_redirected_to comments_path
    end
  end
end

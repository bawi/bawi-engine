require 'test_helper'

module Bawi
  class GroupsControllerTest < ActionController::TestCase
    include Bawi::Engine.routes.url_helpers
    
    setup do
      @group = bawi_groups(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:groups)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create group" do
      assert_difference('Group.count') do
        new_group = bawi_groups(:two)
        new_group.keyword = "newgroup"
        post :create, group: new_group.attributes
      end
  
      assert_redirected_to group_path(assigns(:group))
    end
  
    test "should show group" do
      get :show, id: @group
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @group
      assert_response :success
    end
  
    test "should update group" do
      put :update, id: @group, group: @group.attributes
      assert_redirected_to group_path(assigns(:group))
    end
  
    test "should destroy group" do
      assert_difference('Group.count', -1) do
        delete :destroy, id: @group
      end
  
      assert_redirected_to groups_path
    end
  end
end

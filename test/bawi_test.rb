require 'test_helper'

class BawiTest < ActiveSupport::TestCase
  test "Bawi Engine" do
    assert_kind_of Module, Bawi
  end
  
  test "should have default user_class" do
    assert_equal "User", Bawi.user_class
  end
  
  test "should set custom user_class" do
    Bawi.user_class = "Person"
    assert_equal "Person", Bawi.user_class
  end
end

require 'test_helper'

class UsrControllerTest < ActionController::TestCase
  test "should get manage" do
    get :manage
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get staff" do
    get :staff
    assert_response :success
  end

end

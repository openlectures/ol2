require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get opportunities" do
    get :opportunities
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_response :success
  end

  test "should get presskit" do
    get :presskit
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

end

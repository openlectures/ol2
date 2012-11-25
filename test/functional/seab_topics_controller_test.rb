require 'test_helper'

class SeabTopicsControllerTest < ActionController::TestCase
  setup do
    @seab_topic = seab_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seab_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seab_topic" do
    assert_difference('SeabTopic.count') do
      post :create, seab_topic: { description: @seab_topic.description, position: @seab_topic.position, topic: @seab_topic.topic }
    end

    assert_redirected_to seab_topic_path(assigns(:seab_topic))
  end

  test "should show seab_topic" do
    get :show, id: @seab_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seab_topic
    assert_response :success
  end

  test "should update seab_topic" do
    put :update, id: @seab_topic, seab_topic: { description: @seab_topic.description, position: @seab_topic.position, topic: @seab_topic.topic }
    assert_redirected_to seab_topic_path(assigns(:seab_topic))
  end

  test "should destroy seab_topic" do
    assert_difference('SeabTopic.count', -1) do
      delete :destroy, id: @seab_topic
    end

    assert_redirected_to seab_topics_path
  end
end

require 'test_helper'

class SeabSubTopicsControllerTest < ActionController::TestCase
  setup do
    @seab_sub_topic = seab_sub_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seab_sub_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seab_sub_topic" do
    assert_difference('SeabSubTopic.count') do
      post :create, seab_sub_topic: { seabtopic_id: @seab_sub_topic.seabtopic_id, topic: @seab_sub_topic.topic }
    end

    assert_redirected_to seab_sub_topic_path(assigns(:seab_sub_topic))
  end

  test "should show seab_sub_topic" do
    get :show, id: @seab_sub_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seab_sub_topic
    assert_response :success
  end

  test "should update seab_sub_topic" do
    put :update, id: @seab_sub_topic, seab_sub_topic: { seabtopic_id: @seab_sub_topic.seabtopic_id, topic: @seab_sub_topic.topic }
    assert_redirected_to seab_sub_topic_path(assigns(:seab_sub_topic))
  end

  test "should destroy seab_sub_topic" do
    assert_difference('SeabSubTopic.count', -1) do
      delete :destroy, id: @seab_sub_topic
    end

    assert_redirected_to seab_sub_topics_path
  end
end

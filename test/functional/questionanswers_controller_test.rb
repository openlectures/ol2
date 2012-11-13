require 'test_helper'

class QuestionanswersControllerTest < ActionController::TestCase
  setup do
    @questionanswer = questionanswers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionanswer" do
    assert_difference('Questionanswer.count') do
      post :create, questionanswer: { answer: @questionanswer.answer, checkpoint_id: @questionanswer.checkpoint_id, question: @questionanswer.question }
    end

    assert_redirected_to questionanswer_path(assigns(:questionanswer))
  end

  test "should show questionanswer" do
    get :show, id: @questionanswer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionanswer
    assert_response :success
  end

  test "should update questionanswer" do
    put :update, id: @questionanswer, questionanswer: { answer: @questionanswer.answer, checkpoint_id: @questionanswer.checkpoint_id, question: @questionanswer.question }
    assert_redirected_to questionanswer_path(assigns(:questionanswer))
  end

  test "should destroy questionanswer" do
    assert_difference('Questionanswer.count', -1) do
      delete :destroy, id: @questionanswer
    end

    assert_redirected_to questionanswers_path
  end
end

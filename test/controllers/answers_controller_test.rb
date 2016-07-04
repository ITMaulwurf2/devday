require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer = answers(:one)
    @question = questions(:one)
  end

  test "should get index" do
    get question_answers_url(@question)
    assert_response :success
  end

  test "should get new" do
    get new_question_answer_url(@question)
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post question_answers_url(@question), params: { answer: { author: @answer.author, body: @answer.body, question_id: @answer.question_id, rating: @answer.rating } }
    end

    assert_redirected_to question_url(@question)
  end

  test "should show answer" do
    get question_answer_url(@question, @answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_answer_url(@question, @answer)
    assert_response :success
  end

  test "should update answer" do
    patch question_answer_url(@question, @answer), params: { answer: { author: @answer.author, body: @answer.body, question_id: @answer.question_id, rating: @answer.rating } }
    assert_redirected_to question_url(@question)
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete question_answer_url(@question, @answer)
    end

    assert_redirected_to question_url @question
  end
end

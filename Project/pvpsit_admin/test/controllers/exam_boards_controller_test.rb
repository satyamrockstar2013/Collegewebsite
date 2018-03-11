require 'test_helper'

class ExamBoardsControllerTest < ActionController::TestCase
  setup do
    @exam_board = exam_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_board" do
    assert_difference('ExamBoard.count') do
      post :create, exam_board: { title: @exam_board.title, url: @exam_board.url }
    end

    assert_redirected_to exam_board_path(assigns(:exam_board))
  end

  test "should show exam_board" do
    get :show, id: @exam_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_board
    assert_response :success
  end

  test "should update exam_board" do
    patch :update, id: @exam_board, exam_board: { title: @exam_board.title, url: @exam_board.url }
    assert_redirected_to exam_board_path(assigns(:exam_board))
  end

  test "should destroy exam_board" do
    assert_difference('ExamBoard.count', -1) do
      delete :destroy, id: @exam_board
    end

    assert_redirected_to exam_boards_path
  end
end

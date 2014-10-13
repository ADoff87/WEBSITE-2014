require 'test_helper'

class ProjectPiecesControllerTest < ActionController::TestCase
  setup do
    @project_piece = project_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_piece" do
    assert_difference('ProjectPiece.count') do
      post :create, project_piece: {  }
    end

    assert_redirected_to project_piece_path(assigns(:project_piece))
  end

  test "should show project_piece" do
    get :show, id: @project_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_piece
    assert_response :success
  end

  test "should update project_piece" do
    patch :update, id: @project_piece, project_piece: {  }
    assert_redirected_to project_piece_path(assigns(:project_piece))
  end

  test "should destroy project_piece" do
    assert_difference('ProjectPiece.count', -1) do
      delete :destroy, id: @project_piece
    end

    assert_redirected_to project_pieces_path
  end
end

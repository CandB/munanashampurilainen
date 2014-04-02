require 'test_helper'

class InProceedingsControllerTest < ActionController::TestCase
  setup do
    @in_proceeding = in_proceedings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:in_proceedings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create in_proceeding" do
    assert_difference('InProceeding.count') do
      post :create, in_proceeding: { booktitle: @in_proceeding.booktitle, title: @in_proceeding.title, year: @in_proceeding.year }
    end

    assert_redirected_to in_proceeding_path(assigns(:in_proceeding))
  end

  test "should show in_proceeding" do
    get :show, id: @in_proceeding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @in_proceeding
    assert_response :success
  end

  test "should update in_proceeding" do
    patch :update, id: @in_proceeding, in_proceeding: { booktitle: @in_proceeding.booktitle, title: @in_proceeding.title, year: @in_proceeding.year }
    assert_redirected_to in_proceeding_path(assigns(:in_proceeding))
  end

  test "should destroy in_proceeding" do
    assert_difference('InProceeding.count', -1) do
      delete :destroy, id: @in_proceeding
    end

    assert_redirected_to in_proceedings_path
  end
end

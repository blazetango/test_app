require 'test_helper'

class SnamesControllerTest < ActionController::TestCase
  setup do
    @sname = snames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sname" do
    assert_difference('Sname.count') do
      post :create, sname: { name: @sname.name }
    end

    assert_redirected_to sname_path(assigns(:sname))
  end

  test "should show sname" do
    get :show, id: @sname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sname
    assert_response :success
  end

  test "should update sname" do
    put :update, id: @sname, sname: { name: @sname.name }
    assert_redirected_to sname_path(assigns(:sname))
  end

  test "should destroy sname" do
    assert_difference('Sname.count', -1) do
      delete :destroy, id: @sname
    end

    assert_redirected_to snames_path
  end
end

require 'test_helper'

class OksControllerTest < ActionController::TestCase
  setup do
    @ok = oks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ok" do
    assert_difference('Ok.count') do
      post :create, ok: { name: @ok.name }
    end

    assert_redirected_to ok_path(assigns(:ok))
  end

  test "should show ok" do
    get :show, id: @ok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ok
    assert_response :success
  end

  test "should update ok" do
    patch :update, id: @ok, ok: { name: @ok.name }
    assert_redirected_to ok_path(assigns(:ok))
  end

  test "should destroy ok" do
    assert_difference('Ok.count', -1) do
      delete :destroy, id: @ok
    end

    assert_redirected_to oks_path
  end
end

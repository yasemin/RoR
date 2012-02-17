require 'test_helper'

class PosttsControllerTest < ActionController::TestCase
  setup do
    @postt = postts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postt" do
    assert_difference('Postt.count') do
      post :create, postt: @postt.attributes
    end

    assert_redirected_to postt_path(assigns(:postt))
  end

  test "should show postt" do
    get :show, id: @postt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postt
    assert_response :success
  end

  test "should update postt" do
    put :update, id: @postt, postt: @postt.attributes
    assert_redirected_to postt_path(assigns(:postt))
  end

  test "should destroy postt" do
    assert_difference('Postt.count', -1) do
      delete :destroy, id: @postt
    end

    assert_redirected_to postts_path
  end
end

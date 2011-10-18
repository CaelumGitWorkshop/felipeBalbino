require 'test_helper'

class AsdsControllerTest < ActionController::TestCase
  setup do
    @asd = asds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asd" do
    assert_difference('Asd.count') do
      post :create, :asd => @asd.attributes
    end

    assert_redirected_to asd_path(assigns(:asd))
  end

  test "should show asd" do
    get :show, :id => @asd.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @asd.to_param
    assert_response :success
  end

  test "should update asd" do
    put :update, :id => @asd.to_param, :asd => @asd.attributes
    assert_redirected_to asd_path(assigns(:asd))
  end

  test "should destroy asd" do
    assert_difference('Asd.count', -1) do
      delete :destroy, :id => @asd.to_param
    end

    assert_redirected_to asds_path
  end
end

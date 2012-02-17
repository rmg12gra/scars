require 'test_helper'

class PayementsControllerTest < ActionController::TestCase
  setup do
    @payement = payements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payement" do
    assert_difference('Payement.count') do
      post :create, payement: @payement.attributes
    end

    assert_redirected_to payement_path(assigns(:payement))
  end

  test "should show payement" do
    get :show, id: @payement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payement
    assert_response :success
  end

  test "should update payement" do
    put :update, id: @payement, payement: @payement.attributes
    assert_redirected_to payement_path(assigns(:payement))
  end

  test "should destroy payement" do
    assert_difference('Payement.count', -1) do
      delete :destroy, id: @payement
    end

    assert_redirected_to payements_path
  end
end

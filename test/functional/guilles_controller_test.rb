require 'test_helper'

class GuillesControllerTest < ActionController::TestCase
  setup do
    @guille = guilles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guilles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guille" do
    assert_difference('Guille.count') do
      post :create, guille: @guille.attributes
    end

    assert_redirected_to guille_path(assigns(:guille))
  end

  test "should show guille" do
    get :show, id: @guille.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guille.to_param
    assert_response :success
  end

  test "should update guille" do
    put :update, id: @guille.to_param, guille: @guille.attributes
    assert_redirected_to guille_path(assigns(:guille))
  end

  test "should destroy guille" do
    assert_difference('Guille.count', -1) do
      delete :destroy, id: @guille.to_param
    end

    assert_redirected_to guilles_path
  end
end

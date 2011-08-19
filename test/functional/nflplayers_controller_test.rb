require 'test_helper'

class NflplayersControllerTest < ActionController::TestCase
  setup do
    @nflplayer = nflplayers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nflplayers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nflplayer" do
    assert_difference('Nflplayer.count') do
      post :create, :nflplayer => @nflplayer.attributes
    end

    assert_redirected_to nflplayer_path(assigns(:nflplayer))
  end

  test "should show nflplayer" do
    get :show, :id => @nflplayer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nflplayer.to_param
    assert_response :success
  end

  test "should update nflplayer" do
    put :update, :id => @nflplayer.to_param, :nflplayer => @nflplayer.attributes
    assert_redirected_to nflplayer_path(assigns(:nflplayer))
  end

  test "should destroy nflplayer" do
    assert_difference('Nflplayer.count', -1) do
      delete :destroy, :id => @nflplayer.to_param
    end

    assert_redirected_to nflplayers_path
  end
end

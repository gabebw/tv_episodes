require 'test_helper'

class EpisodesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:episodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create episode" do
    assert_difference('Episode.count') do
      post :create, :episode => episodes(:veronica_mars_pilot).attributes
    end

    assert_redirected_to episode_path(assigns(:episode))
  end

  test "should show episode" do
    get :show, :id => episodes(:veronica_mars_pilot).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => episodes(:veronica_mars_pilot).to_param
    assert_response :success
  end

  test "should update episode" do
    put :update, :id => episodes(:veronica_mars_pilot).to_param, :episode => {:name => "Nope, still vmars" }
    assert_redirected_to episode_path(assigns(:episode))
  end

  test "should destroy episode" do
    assert_difference('Episode.count', -1) do
      delete :destroy, :id => episodes(:veronica_mars_pilot).to_param
    end

    assert_redirected_to episodes_path
  end
end

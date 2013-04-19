require 'test_helper'

class MissionmakersControllerTest < ActionController::TestCase
  setup do
    @missionmaker = missionmakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missionmakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create missionmaker" do
    assert_difference('Missionmaker.count') do
      post :create, missionmaker: { description: @missionmaker.description, element: @missionmaker.element, name: @missionmaker.name, participation: @missionmaker.participation, tools: @missionmaker.tools }
    end

    assert_redirected_to missionmaker_path(assigns(:missionmaker))
  end

  test "should show missionmaker" do
    get :show, id: @missionmaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @missionmaker
    assert_response :success
  end

  test "should update missionmaker" do
    put :update, id: @missionmaker, missionmaker: { description: @missionmaker.description, element: @missionmaker.element, name: @missionmaker.name, participation: @missionmaker.participation, tools: @missionmaker.tools }
    assert_redirected_to missionmaker_path(assigns(:missionmaker))
  end

  test "should destroy missionmaker" do
    assert_difference('Missionmaker.count', -1) do
      delete :destroy, id: @missionmaker
    end

    assert_redirected_to missionmakers_path
  end
end

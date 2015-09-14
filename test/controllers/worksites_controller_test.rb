require 'test_helper'

class WorksitesControllerTest < ActionController::TestCase
  setup do
    @worksite = worksites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worksites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worksite" do
    assert_difference('Worksite.count') do
      post :create, worksite: { budget: @worksite.budget, end_date: @worksite.end_date, location: @worksite.location, name: @worksite.name, start_date: @worksite.start_date }
    end

    assert_redirected_to worksite_path(assigns(:worksite))
  end

  test "should show worksite" do
    get :show, id: @worksite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worksite
    assert_response :success
  end

  test "should update worksite" do
    patch :update, id: @worksite, worksite: { budget: @worksite.budget, end_date: @worksite.end_date, location: @worksite.location, name: @worksite.name, start_date: @worksite.start_date }
    assert_redirected_to worksite_path(assigns(:worksite))
  end

  test "should destroy worksite" do
    assert_difference('Worksite.count', -1) do
      delete :destroy, id: @worksite
    end

    assert_redirected_to worksites_path
  end
end

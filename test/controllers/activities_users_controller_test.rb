require 'test_helper'

class ActivitiesUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activities_user = activities_users(:one)
  end

  test "should get index" do
    get activities_users_url
    assert_response :success
  end

  test "should get new" do
    get new_activities_user_url
    assert_response :success
  end

  test "should create activities_user" do
    assert_difference('ActivitiesUser.count') do
      post activities_users_url, params: { activities_user: {  } }
    end

    assert_redirected_to activities_user_url(ActivitiesUser.last)
  end

  test "should show activities_user" do
    get activities_user_url(@activities_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_activities_user_url(@activities_user)
    assert_response :success
  end

  test "should update activities_user" do
    patch activities_user_url(@activities_user), params: { activities_user: {  } }
    assert_redirected_to activities_user_url(@activities_user)
  end

  test "should destroy activities_user" do
    assert_difference('ActivitiesUser.count', -1) do
      delete activities_user_url(@activities_user)
    end

    assert_redirected_to activities_users_url
  end
end

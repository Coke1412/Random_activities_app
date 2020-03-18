require 'test_helper'

class UserChosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_chose = user_choses(:one)
  end

  test "should get index" do
    get user_choses_url
    assert_response :success
  end

  test "should get new" do
    get new_user_chose_url
    assert_response :success
  end

  test "should create user_chose" do
    assert_difference('UserChose.count') do
      post user_choses_url, params: { user_chose: {  } }
    end

    assert_redirected_to user_chose_url(UserChose.last)
  end

  test "should show user_chose" do
    get user_chose_url(@user_chose)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_chose_url(@user_chose)
    assert_response :success
  end

  test "should update user_chose" do
    patch user_chose_url(@user_chose), params: { user_chose: {  } }
    assert_redirected_to user_chose_url(@user_chose)
  end

  test "should destroy user_chose" do
    assert_difference('UserChose.count', -1) do
      delete user_chose_url(@user_chose)
    end

    assert_redirected_to user_choses_url
  end
end

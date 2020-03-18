require "application_system_test_case"

class UserChosesTest < ApplicationSystemTestCase
  setup do
    @user_chose = user_choses(:one)
  end

  test "visiting the index" do
    visit user_choses_url
    assert_selector "h1", text: "User Choses"
  end

  test "creating a User chose" do
    visit user_choses_url
    click_on "New User Chose"

    click_on "Create User chose"

    assert_text "User chose was successfully created"
    click_on "Back"
  end

  test "updating a User chose" do
    visit user_choses_url
    click_on "Edit", match: :first

    click_on "Update User chose"

    assert_text "User chose was successfully updated"
    click_on "Back"
  end

  test "destroying a User chose" do
    visit user_choses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User chose was successfully destroyed"
  end
end

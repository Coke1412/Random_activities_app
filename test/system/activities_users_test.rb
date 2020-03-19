require "application_system_test_case"

class ActivitiesUsersTest < ApplicationSystemTestCase
  setup do
    @activities_user = activities_users(:one)
  end

  test "visiting the index" do
    visit activities_users_url
    assert_selector "h1", text: "Activities Users"
  end

  test "creating a Activities user" do
    visit activities_users_url
    click_on "New Activities User"

    click_on "Create Activities user"

    assert_text "Activities user was successfully created"
    click_on "Back"
  end

  test "updating a Activities user" do
    visit activities_users_url
    click_on "Edit", match: :first

    click_on "Update Activities user"

    assert_text "Activities user was successfully updated"
    click_on "Back"
  end

  test "destroying a Activities user" do
    visit activities_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activities user was successfully destroyed"
  end
end

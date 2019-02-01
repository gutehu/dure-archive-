require "application_system_test_case"

class DuresTest < ApplicationSystemTestCase
  setup do
    @dure = dures(:one)
  end

  test "visiting the index" do
    visit dures_url
    assert_selector "h1", text: "Dures"
  end

  test "creating a Dure" do
    visit dures_url
    click_on "New Dure"

    fill_in "Activity", with: @dure.activity
    fill_in "Address", with: @dure.address
    fill_in "Effective", with: @dure.effective
    fill_in "Name", with: @dure.name
    fill_in "Other", with: @dure.other
    click_on "Create Dure"

    assert_text "Dure was successfully created"
    click_on "Back"
  end

  test "updating a Dure" do
    visit dures_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @dure.activity
    fill_in "Address", with: @dure.address
    fill_in "Effective", with: @dure.effective
    fill_in "Name", with: @dure.name
    fill_in "Other", with: @dure.other
    click_on "Update Dure"

    assert_text "Dure was successfully updated"
    click_on "Back"
  end

  test "destroying a Dure" do
    visit dures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dure was successfully destroyed"
  end
end

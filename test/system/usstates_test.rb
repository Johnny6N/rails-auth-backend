require "application_system_test_case"

class UsstatesTest < ApplicationSystemTestCase
  setup do
    @usstate = usstates(:one)
  end

  test "visiting the index" do
    visit usstates_url
    assert_selector "h1", text: "Usstates"
  end

  test "creating a Usstate" do
    visit usstates_url
    click_on "New Usstate"

    fill_in "Conditions", with: @usstate.conditions
    fill_in "Hours", with: @usstate.hours
    fill_in "Link", with: @usstate.link
    fill_in "Name", with: @usstate.name
    fill_in "Periodicity", with: @usstate.periodicity
    click_on "Create Usstate"

    assert_text "Usstate was successfully created"
    click_on "Back"
  end

  test "updating a Usstate" do
    visit usstates_url
    click_on "Edit", match: :first

    fill_in "Conditions", with: @usstate.conditions
    fill_in "Hours", with: @usstate.hours
    fill_in "Link", with: @usstate.link
    fill_in "Name", with: @usstate.name
    fill_in "Periodicity", with: @usstate.periodicity
    click_on "Update Usstate"

    assert_text "Usstate was successfully updated"
    click_on "Back"
  end

  test "destroying a Usstate" do
    visit usstates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usstate was successfully destroyed"
  end
end

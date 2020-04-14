require "application_system_test_case"

class CeusTest < ApplicationSystemTestCase
  setup do
    @ceu = ceus(:one)
  end

  test "visiting the index" do
    visit ceus_url
    assert_selector "h1", text: "Ceus"
  end

  test "creating a Ceu" do
    visit ceus_url
    click_on "New Ceu"

    fill_in "Hours", with: @ceu.hours
    fill_in "Instructor name", with: @ceu.instructor_name
    fill_in "Number", with: @ceu.number
    fill_in "Provider name", with: @ceu.provider_name
    fill_in "State", with: @ceu.state
    fill_in "Title", with: @ceu.title
    click_on "Create Ceu"

    assert_text "Ceu was successfully created"
    click_on "Back"
  end

  test "updating a Ceu" do
    visit ceus_url
    click_on "Edit", match: :first

    fill_in "Hours", with: @ceu.hours
    fill_in "Instructor name", with: @ceu.instructor_name
    fill_in "Number", with: @ceu.number
    fill_in "Provider name", with: @ceu.provider_name
    fill_in "State", with: @ceu.state
    fill_in "Title", with: @ceu.title
    click_on "Update Ceu"

    assert_text "Ceu was successfully updated"
    click_on "Back"
  end

  test "destroying a Ceu" do
    visit ceus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ceu was successfully destroyed"
  end
end

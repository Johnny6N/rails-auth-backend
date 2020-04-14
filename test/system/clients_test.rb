require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Birth day", with: @client.birth_day
    fill_in "Birth month", with: @client.birth_month
    fill_in "Birth year", with: @client.birth_year
    fill_in "F name", with: @client.f_name
    fill_in "L name", with: @client.l_name
    fill_in "License", with: @client.license
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Birth day", with: @client.birth_day
    fill_in "Birth month", with: @client.birth_month
    fill_in "Birth year", with: @client.birth_year
    fill_in "F name", with: @client.f_name
    fill_in "L name", with: @client.l_name
    fill_in "License", with: @client.license
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end

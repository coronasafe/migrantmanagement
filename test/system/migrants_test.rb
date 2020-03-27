require "application_system_test_case"

class MigrantsTest < ApplicationSystemTestCase
  setup do
    @migrant = migrants(:one)
  end

  test "visiting the index" do
    visit migrants_url
    assert_selector "h1", text: "Migrants"
  end

  test "creating a Migrant" do
    visit migrants_url
    click_on "New Migrant"

    fill_in "Employer name", with: @migrant.employer_name
    fill_in "Local residence", with: @migrant.local_residence
    fill_in "Name", with: @migrant.name
    click_on "Create Migrant"

    assert_text "Migrant was successfully created"
    click_on "Back"
  end

  test "updating a Migrant" do
    visit migrants_url
    click_on "Edit", match: :first

    fill_in "Employer name", with: @migrant.employer_name
    fill_in "Local residence", with: @migrant.local_residence
    fill_in "Name", with: @migrant.name
    click_on "Update Migrant"

    assert_text "Migrant was successfully updated"
    click_on "Back"
  end

  test "destroying a Migrant" do
    visit migrants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Migrant was successfully destroyed"
  end
end

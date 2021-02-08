require "application_system_test_case"

class EmployeedocumentsTest < ApplicationSystemTestCase
  setup do
    @employeedocument = employeedocuments(:one)
  end

  test "visiting the index" do
    visit employeedocuments_url
    assert_selector "h1", text: "Employeedocuments"
  end

  test "creating a Employeedocument" do
    visit employeedocuments_url
    click_on "New Employeedocument"

    fill_in "Age", with: @employeedocument.age
    fill_in "Designation", with: @employeedocument.designation
    fill_in "First name", with: @employeedocument.first_name
    fill_in "Gender", with: @employeedocument.gender
    fill_in "Last name", with: @employeedocument.last_name
    click_on "Create Employeedocument"

    assert_text "Employeedocument was successfully created"
    click_on "Back"
  end

  test "updating a Employeedocument" do
    visit employeedocuments_url
    click_on "Edit", match: :first

    fill_in "Age", with: @employeedocument.age
    fill_in "Designation", with: @employeedocument.designation
    fill_in "First name", with: @employeedocument.first_name
    fill_in "Gender", with: @employeedocument.gender
    fill_in "Last name", with: @employeedocument.last_name
    click_on "Update Employeedocument"

    assert_text "Employeedocument was successfully updated"
    click_on "Back"
  end

  test "destroying a Employeedocument" do
    visit employeedocuments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employeedocument was successfully destroyed"
  end
end

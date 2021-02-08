require "application_system_test_case"

class EmployeedetailsTest < ApplicationSystemTestCase
  setup do
    @employeedetail = employeedetails(:one)
  end

  test "visiting the index" do
    visit employeedetails_url
    assert_selector "h1", text: "Employeedetails"
  end

  test "creating a Employeedetail" do
    visit employeedetails_url
    click_on "New Employeedetail"

    fill_in "Age", with: @employeedetail.age
    fill_in "Designation", with: @employeedetail.designation
    fill_in "First name", with: @employeedetail.first_name
    fill_in "Gender", with: @employeedetail.gender
    fill_in "Last string", with: @employeedetail.last_string
    click_on "Create Employeedetail"

    assert_text "Employeedetail was successfully created"
    click_on "Back"
  end

  test "updating a Employeedetail" do
    visit employeedetails_url
    click_on "Edit", match: :first

    fill_in "Age", with: @employeedetail.age
    fill_in "Designation", with: @employeedetail.designation
    fill_in "First name", with: @employeedetail.first_name
    fill_in "Gender", with: @employeedetail.gender
    fill_in "Last string", with: @employeedetail.last_string
    click_on "Update Employeedetail"

    assert_text "Employeedetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Employeedetail" do
    visit employeedetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employeedetail was successfully destroyed"
  end
end

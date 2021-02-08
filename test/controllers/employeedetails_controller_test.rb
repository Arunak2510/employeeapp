require "test_helper"

class EmployeedetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeedetail = employeedetails(:one)
  end

  test "should get index" do
    get employeedetails_url
    assert_response :success
  end

  test "should get new" do
    get new_employeedetail_url
    assert_response :success
  end

  test "should create employeedetail" do
    assert_difference('Employeedetail.count') do
      post employeedetails_url, params: { employeedetail: { age: @employeedetail.age, designation: @employeedetail.designation, first_name: @employeedetail.first_name, gender: @employeedetail.gender, last_string: @employeedetail.last_string } }
    end

    assert_redirected_to employeedetail_url(Employeedetail.last)
  end

  test "should show employeedetail" do
    get employeedetail_url(@employeedetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeedetail_url(@employeedetail)
    assert_response :success
  end

  test "should update employeedetail" do
    patch employeedetail_url(@employeedetail), params: { employeedetail: { age: @employeedetail.age, designation: @employeedetail.designation, first_name: @employeedetail.first_name, gender: @employeedetail.gender, last_string: @employeedetail.last_string } }
    assert_redirected_to employeedetail_url(@employeedetail)
  end

  test "should destroy employeedetail" do
    assert_difference('Employeedetail.count', -1) do
      delete employeedetail_url(@employeedetail)
    end

    assert_redirected_to employeedetails_url
  end
end

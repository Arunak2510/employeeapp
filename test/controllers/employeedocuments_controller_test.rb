require "test_helper"

class EmployeedocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeedocument = employeedocuments(:one)
  end

  test "should get index" do
    get employeedocuments_url
    assert_response :success
  end

  test "should get new" do
    get new_employeedocument_url
    assert_response :success
  end

  test "should create employeedocument" do
    assert_difference('Employeedocument.count') do
      post employeedocuments_url, params: { employeedocument: { age: @employeedocument.age, designation: @employeedocument.designation, first_name: @employeedocument.first_name, gender: @employeedocument.gender, last_name: @employeedocument.last_name } }
    end

    assert_redirected_to employeedocument_url(Employeedocument.last)
  end

  test "should show employeedocument" do
    get employeedocument_url(@employeedocument)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeedocument_url(@employeedocument)
    assert_response :success
  end

  test "should update employeedocument" do
    patch employeedocument_url(@employeedocument), params: { employeedocument: { age: @employeedocument.age, designation: @employeedocument.designation, first_name: @employeedocument.first_name, gender: @employeedocument.gender, last_name: @employeedocument.last_name } }
    assert_redirected_to employeedocument_url(@employeedocument)
  end

  test "should destroy employeedocument" do
    assert_difference('Employeedocument.count', -1) do
      delete employeedocument_url(@employeedocument)
    end

    assert_redirected_to employeedocuments_url
  end
end

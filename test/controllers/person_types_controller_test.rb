require "test_helper"

class PersonTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_type = person_types(:one)
  end

  test "should get index" do
    get person_types_url
    assert_response :success
  end

  test "should get new" do
    get new_person_type_url
    assert_response :success
  end

  test "should create person_type" do
    assert_difference("PersonType.count") do
      post person_types_url, params: { person_type: { description: @person_type.description } }
    end

    assert_redirected_to person_type_url(PersonType.last)
  end

  test "should show person_type" do
    get person_type_url(@person_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_type_url(@person_type)
    assert_response :success
  end

  test "should update person_type" do
    patch person_type_url(@person_type), params: { person_type: { description: @person_type.description } }
    assert_redirected_to person_type_url(@person_type)
  end

  test "should destroy person_type" do
    assert_difference("PersonType.count", -1) do
      delete person_type_url(@person_type)
    end

    assert_redirected_to person_types_url
  end
end

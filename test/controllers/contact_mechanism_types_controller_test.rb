require "test_helper"

class ContactMechanismTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_mechanism_type = contact_mechanism_types(:one)
  end

  test "should get index" do
    get contact_mechanism_types_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_mechanism_type_url
    assert_response :success
  end

  test "should create contact_mechanism_type" do
    assert_difference("ContactMechanismType.count") do
      post contact_mechanism_types_url, params: { contact_mechanism_type: { description: @contact_mechanism_type.description } }
    end

    assert_redirected_to contact_mechanism_type_url(ContactMechanismType.last)
  end

  test "should show contact_mechanism_type" do
    get contact_mechanism_type_url(@contact_mechanism_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_mechanism_type_url(@contact_mechanism_type)
    assert_response :success
  end

  test "should update contact_mechanism_type" do
    patch contact_mechanism_type_url(@contact_mechanism_type), params: { contact_mechanism_type: { description: @contact_mechanism_type.description } }
    assert_redirected_to contact_mechanism_type_url(@contact_mechanism_type)
  end

  test "should destroy contact_mechanism_type" do
    assert_difference("ContactMechanismType.count", -1) do
      delete contact_mechanism_type_url(@contact_mechanism_type)
    end

    assert_redirected_to contact_mechanism_types_url
  end
end

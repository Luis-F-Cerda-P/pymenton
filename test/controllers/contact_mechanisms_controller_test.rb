require "test_helper"

class ContactMechanismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_mechanism = contact_mechanisms(:one)
  end

  test "should get index" do
    get contact_mechanisms_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_mechanism_url
    assert_response :success
  end

  test "should create contact_mechanism" do
    assert_difference("ContactMechanism.count") do
      post contact_mechanisms_url, params: { contact_mechanism: { contact_mechanism_type_id: @contact_mechanism.contact_mechanism_type_id } }
    end

    assert_redirected_to contact_mechanism_url(ContactMechanism.last)
  end

  test "should show contact_mechanism" do
    get contact_mechanism_url(@contact_mechanism)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_mechanism_url(@contact_mechanism)
    assert_response :success
  end

  test "should update contact_mechanism" do
    patch contact_mechanism_url(@contact_mechanism), params: { contact_mechanism: { contact_mechanism_type_id: @contact_mechanism.contact_mechanism_type_id } }
    assert_redirected_to contact_mechanism_url(@contact_mechanism)
  end

  test "should destroy contact_mechanism" do
    assert_difference("ContactMechanism.count", -1) do
      delete contact_mechanism_url(@contact_mechanism)
    end

    assert_redirected_to contact_mechanisms_url
  end
end

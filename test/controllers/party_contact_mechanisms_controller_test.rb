require "test_helper"

class PartyContactMechanismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_contact_mechanism = party_contact_mechanisms(:one)
  end

  test "should get index" do
    get party_contact_mechanisms_url
    assert_response :success
  end

  test "should get new" do
    get new_party_contact_mechanism_url
    assert_response :success
  end

  test "should create party_contact_mechanism" do
    assert_difference("PartyContactMechanism.count") do
      post party_contact_mechanisms_url, params: { party_contact_mechanism: { contact_mechanism_id: @party_contact_mechanism.contact_mechanism_id, party_id: @party_contact_mechanism.party_id } }
    end

    assert_redirected_to party_contact_mechanism_url(PartyContactMechanism.last)
  end

  test "should show party_contact_mechanism" do
    get party_contact_mechanism_url(@party_contact_mechanism)
    assert_response :success
  end

  test "should get edit" do
    get edit_party_contact_mechanism_url(@party_contact_mechanism)
    assert_response :success
  end

  test "should update party_contact_mechanism" do
    patch party_contact_mechanism_url(@party_contact_mechanism), params: { party_contact_mechanism: { contact_mechanism_id: @party_contact_mechanism.contact_mechanism_id, party_id: @party_contact_mechanism.party_id } }
    assert_redirected_to party_contact_mechanism_url(@party_contact_mechanism)
  end

  test "should destroy party_contact_mechanism" do
    assert_difference("PartyContactMechanism.count", -1) do
      delete party_contact_mechanism_url(@party_contact_mechanism)
    end

    assert_redirected_to party_contact_mechanisms_url
  end
end

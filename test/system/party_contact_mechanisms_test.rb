require "application_system_test_case"

class PartyContactMechanismsTest < ApplicationSystemTestCase
  setup do
    @party_contact_mechanism = party_contact_mechanisms(:one)
  end

  test "visiting the index" do
    visit party_contact_mechanisms_url
    assert_selector "h1", text: "Party contact mechanisms"
  end

  test "should create party contact mechanism" do
    visit party_contact_mechanisms_url
    click_on "New party contact mechanism"

    fill_in "Contact mechanism", with: @party_contact_mechanism.contact_mechanism_id
    fill_in "Party", with: @party_contact_mechanism.party_id
    click_on "Create Party contact mechanism"

    assert_text "Party contact mechanism was successfully created"
    click_on "Back"
  end

  test "should update Party contact mechanism" do
    visit party_contact_mechanism_url(@party_contact_mechanism)
    click_on "Edit this party contact mechanism", match: :first

    fill_in "Contact mechanism", with: @party_contact_mechanism.contact_mechanism_id
    fill_in "Party", with: @party_contact_mechanism.party_id
    click_on "Update Party contact mechanism"

    assert_text "Party contact mechanism was successfully updated"
    click_on "Back"
  end

  test "should destroy Party contact mechanism" do
    visit party_contact_mechanism_url(@party_contact_mechanism)
    click_on "Destroy this party contact mechanism", match: :first

    assert_text "Party contact mechanism was successfully destroyed"
  end
end

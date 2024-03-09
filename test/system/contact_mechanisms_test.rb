require "application_system_test_case"

class ContactMechanismsTest < ApplicationSystemTestCase
  setup do
    @contact_mechanism = contact_mechanisms(:one)
  end

  test "visiting the index" do
    visit contact_mechanisms_url
    assert_selector "h1", text: "Contact mechanisms"
  end

  test "should create contact mechanism" do
    visit contact_mechanisms_url
    click_on "New contact mechanism"

    fill_in "Contact mechanism type", with: @contact_mechanism.contact_mechanism_type_id
    click_on "Create Contact mechanism"

    assert_text "Contact mechanism was successfully created"
    click_on "Back"
  end

  test "should update Contact mechanism" do
    visit contact_mechanism_url(@contact_mechanism)
    click_on "Edit this contact mechanism", match: :first

    fill_in "Contact mechanism type", with: @contact_mechanism.contact_mechanism_type_id
    click_on "Update Contact mechanism"

    assert_text "Contact mechanism was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact mechanism" do
    visit contact_mechanism_url(@contact_mechanism)
    click_on "Destroy this contact mechanism", match: :first

    assert_text "Contact mechanism was successfully destroyed"
  end
end

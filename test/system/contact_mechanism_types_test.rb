require "application_system_test_case"

class ContactMechanismTypesTest < ApplicationSystemTestCase
  setup do
    @contact_mechanism_type = contact_mechanism_types(:one)
  end

  test "visiting the index" do
    visit contact_mechanism_types_url
    assert_selector "h1", text: "Contact mechanism types"
  end

  test "should create contact mechanism type" do
    visit contact_mechanism_types_url
    click_on "New contact mechanism type"

    fill_in "Description", with: @contact_mechanism_type.description
    click_on "Create Contact mechanism type"

    assert_text "Contact mechanism type was successfully created"
    click_on "Back"
  end

  test "should update Contact mechanism type" do
    visit contact_mechanism_type_url(@contact_mechanism_type)
    click_on "Edit this contact mechanism type", match: :first

    fill_in "Description", with: @contact_mechanism_type.description
    click_on "Update Contact mechanism type"

    assert_text "Contact mechanism type was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact mechanism type" do
    visit contact_mechanism_type_url(@contact_mechanism_type)
    click_on "Destroy this contact mechanism type", match: :first

    assert_text "Contact mechanism type was successfully destroyed"
  end
end

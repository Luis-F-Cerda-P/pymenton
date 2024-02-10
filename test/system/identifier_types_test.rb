require "application_system_test_case"

class IdentifierTypesTest < ApplicationSystemTestCase
  setup do
    @identifier_type = identifier_types(:one)
  end

  test "visiting the index" do
    visit identifier_types_url
    assert_selector "h1", text: "Identifier types"
  end

  test "should create identifier type" do
    visit identifier_types_url
    click_on "New identifier type"

    fill_in "Description", with: @identifier_type.description
    click_on "Create Identifier type"

    assert_text "Identifier type was successfully created"
    click_on "Back"
  end

  test "should update Identifier type" do
    visit identifier_type_url(@identifier_type)
    click_on "Edit this identifier type", match: :first

    fill_in "Description", with: @identifier_type.description
    click_on "Update Identifier type"

    assert_text "Identifier type was successfully updated"
    click_on "Back"
  end

  test "should destroy Identifier type" do
    visit identifier_type_url(@identifier_type)
    click_on "Destroy this identifier type", match: :first

    assert_text "Identifier type was successfully destroyed"
  end
end

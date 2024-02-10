require "application_system_test_case"

class IdentifiersTest < ApplicationSystemTestCase
  setup do
    @identifier = identifiers(:one)
  end

  test "visiting the index" do
    visit identifiers_url
    assert_selector "h1", text: "Identifiers"
  end

  test "should create identifier" do
    visit identifiers_url
    click_on "New identifier"

    fill_in "Identifiable", with: @identifier.identifiable_id
    fill_in "Identifiable type", with: @identifier.identifiable_type
    fill_in "Identifier type", with: @identifier.identifier_type_id
    check "Main identifier" if @identifier.main_identifier
    fill_in "Value", with: @identifier.value
    click_on "Create Identifier"

    assert_text "Identifier was successfully created"
    click_on "Back"
  end

  test "should update Identifier" do
    visit identifier_url(@identifier)
    click_on "Edit this identifier", match: :first

    fill_in "Identifiable", with: @identifier.identifiable_id
    fill_in "Identifiable type", with: @identifier.identifiable_type
    fill_in "Identifier type", with: @identifier.identifier_type_id
    check "Main identifier" if @identifier.main_identifier
    fill_in "Value", with: @identifier.value
    click_on "Update Identifier"

    assert_text "Identifier was successfully updated"
    click_on "Back"
  end

  test "should destroy Identifier" do
    visit identifier_url(@identifier)
    click_on "Destroy this identifier", match: :first

    assert_text "Identifier was successfully destroyed"
  end
end

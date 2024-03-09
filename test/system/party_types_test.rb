require "application_system_test_case"

class PartyTypesTest < ApplicationSystemTestCase
  setup do
    @party_type = party_types(:one)
  end

  test "visiting the index" do
    visit party_types_url
    assert_selector "h1", text: "Party types"
  end

  test "should create party type" do
    visit party_types_url
    click_on "New party type"

    fill_in "Description", with: @party_type.description
    click_on "Create Party type"

    assert_text "Party type was successfully created"
    click_on "Back"
  end

  test "should update Party type" do
    visit party_type_url(@party_type)
    click_on "Edit this party type", match: :first

    fill_in "Description", with: @party_type.description
    click_on "Update Party type"

    assert_text "Party type was successfully updated"
    click_on "Back"
  end

  test "should destroy Party type" do
    visit party_type_url(@party_type)
    click_on "Destroy this party type", match: :first

    assert_text "Party type was successfully destroyed"
  end
end

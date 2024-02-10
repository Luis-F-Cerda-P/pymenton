require "application_system_test_case"

class TransportationTypesTest < ApplicationSystemTestCase
  setup do
    @transportation_type = transportation_types(:one)
  end

  test "visiting the index" do
    visit transportation_types_url
    assert_selector "h1", text: "Transportation types"
  end

  test "should create transportation type" do
    visit transportation_types_url
    click_on "New transportation type"

    fill_in "Associated costs", with: @transportation_type.associated_costs
    fill_in "Description", with: @transportation_type.description
    click_on "Create Transportation type"

    assert_text "Transportation type was successfully created"
    click_on "Back"
  end

  test "should update Transportation type" do
    visit transportation_type_url(@transportation_type)
    click_on "Edit this transportation type", match: :first

    fill_in "Associated costs", with: @transportation_type.associated_costs
    fill_in "Description", with: @transportation_type.description
    click_on "Update Transportation type"

    assert_text "Transportation type was successfully updated"
    click_on "Back"
  end

  test "should destroy Transportation type" do
    visit transportation_type_url(@transportation_type)
    click_on "Destroy this transportation type", match: :first

    assert_text "Transportation type was successfully destroyed"
  end
end

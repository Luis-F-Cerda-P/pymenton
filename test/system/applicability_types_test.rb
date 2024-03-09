require "application_system_test_case"

class ApplicabilityTypesTest < ApplicationSystemTestCase
  setup do
    @applicability_type = applicability_types(:one)
  end

  test "visiting the index" do
    visit applicability_types_url
    assert_selector "h1", text: "Applicability types"
  end

  test "should create applicability type" do
    visit applicability_types_url
    click_on "New applicability type"

    fill_in "Description", with: @applicability_type.description
    click_on "Create Applicability type"

    assert_text "Applicability type was successfully created"
    click_on "Back"
  end

  test "should update Applicability type" do
    visit applicability_type_url(@applicability_type)
    click_on "Edit this applicability type", match: :first

    fill_in "Description", with: @applicability_type.description
    click_on "Update Applicability type"

    assert_text "Applicability type was successfully updated"
    click_on "Back"
  end

  test "should destroy Applicability type" do
    visit applicability_type_url(@applicability_type)
    click_on "Destroy this applicability type", match: :first

    assert_text "Applicability type was successfully destroyed"
  end
end

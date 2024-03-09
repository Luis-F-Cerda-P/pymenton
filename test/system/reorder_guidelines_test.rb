require "application_system_test_case"

class ReorderGuidelinesTest < ApplicationSystemTestCase
  setup do
    @reorder_guideline = reorder_guidelines(:one)
  end

  test "visiting the index" do
    visit reorder_guidelines_url
    assert_selector "h1", text: "Reorder guidelines"
  end

  test "should create reorder guideline" do
    visit reorder_guidelines_url
    click_on "New reorder guideline"

    fill_in "Facility", with: @reorder_guideline.facility_id
    fill_in "From date", with: @reorder_guideline.from_date
    fill_in "Good", with: @reorder_guideline.good_id
    fill_in "Reorder level", with: @reorder_guideline.reorder_level
    fill_in "Reorder quantity", with: @reorder_guideline.reorder_quantity
    fill_in "Thru date", with: @reorder_guideline.thru_date
    click_on "Create Reorder guideline"

    assert_text "Reorder guideline was successfully created"
    click_on "Back"
  end

  test "should update Reorder guideline" do
    visit reorder_guideline_url(@reorder_guideline)
    click_on "Edit this reorder guideline", match: :first

    fill_in "Facility", with: @reorder_guideline.facility_id
    fill_in "From date", with: @reorder_guideline.from_date
    fill_in "Good", with: @reorder_guideline.good_id
    fill_in "Reorder level", with: @reorder_guideline.reorder_level
    fill_in "Reorder quantity", with: @reorder_guideline.reorder_quantity
    fill_in "Thru date", with: @reorder_guideline.thru_date
    click_on "Update Reorder guideline"

    assert_text "Reorder guideline was successfully updated"
    click_on "Back"
  end

  test "should destroy Reorder guideline" do
    visit reorder_guideline_url(@reorder_guideline)
    click_on "Destroy this reorder guideline", match: :first

    assert_text "Reorder guideline was successfully destroyed"
  end
end

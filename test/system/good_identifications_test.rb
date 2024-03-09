require "application_system_test_case"

class GoodIdentificationsTest < ApplicationSystemTestCase
  setup do
    @good_identification = good_identifications(:one)
  end

  test "visiting the index" do
    visit good_identifications_url
    assert_selector "h1", text: "Good identifications"
  end

  test "should create good identification" do
    visit good_identifications_url
    click_on "New good identification"

    fill_in "Good", with: @good_identification.good_id
    fill_in "Identification", with: @good_identification.identification_id
    click_on "Create Good identification"

    assert_text "Good identification was successfully created"
    click_on "Back"
  end

  test "should update Good identification" do
    visit good_identification_url(@good_identification)
    click_on "Edit this good identification", match: :first

    fill_in "Good", with: @good_identification.good_id
    fill_in "Identification", with: @good_identification.identification_id
    click_on "Update Good identification"

    assert_text "Good identification was successfully updated"
    click_on "Back"
  end

  test "should destroy Good identification" do
    visit good_identification_url(@good_identification)
    click_on "Destroy this good identification", match: :first

    assert_text "Good identification was successfully destroyed"
  end
end

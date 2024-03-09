require "application_system_test_case"

class FeatureApplicabilitiesTest < ApplicationSystemTestCase
  setup do
    @feature_applicability = feature_applicabilities(:one)
  end

  test "visiting the index" do
    visit feature_applicabilities_url
    assert_selector "h1", text: "Feature applicabilities"
  end

  test "should create feature applicability" do
    visit feature_applicabilities_url
    click_on "New feature applicability"

    fill_in "Applicability type", with: @feature_applicability.applicability_type_id
    fill_in "Feature", with: @feature_applicability.feature_id
    fill_in "From date", with: @feature_applicability.from_date
    fill_in "Good", with: @feature_applicability.good_id
    fill_in "Thru date", with: @feature_applicability.thru_date
    click_on "Create Feature applicability"

    assert_text "Feature applicability was successfully created"
    click_on "Back"
  end

  test "should update Feature applicability" do
    visit feature_applicability_url(@feature_applicability)
    click_on "Edit this feature applicability", match: :first

    fill_in "Applicability type", with: @feature_applicability.applicability_type_id
    fill_in "Feature", with: @feature_applicability.feature_id
    fill_in "From date", with: @feature_applicability.from_date
    fill_in "Good", with: @feature_applicability.good_id
    fill_in "Thru date", with: @feature_applicability.thru_date
    click_on "Update Feature applicability"

    assert_text "Feature applicability was successfully updated"
    click_on "Back"
  end

  test "should destroy Feature applicability" do
    visit feature_applicability_url(@feature_applicability)
    click_on "Destroy this feature applicability", match: :first

    assert_text "Feature applicability was successfully destroyed"
  end
end

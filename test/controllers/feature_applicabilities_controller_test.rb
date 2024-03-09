require "test_helper"

class FeatureApplicabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feature_applicability = feature_applicabilities(:one)
  end

  test "should get index" do
    get feature_applicabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_feature_applicability_url
    assert_response :success
  end

  test "should create feature_applicability" do
    assert_difference("FeatureApplicability.count") do
      post feature_applicabilities_url, params: { feature_applicability: { applicability_type_id: @feature_applicability.applicability_type_id, feature_id: @feature_applicability.feature_id, from_date: @feature_applicability.from_date, good_id: @feature_applicability.good_id, thru_date: @feature_applicability.thru_date } }
    end

    assert_redirected_to feature_applicability_url(FeatureApplicability.last)
  end

  test "should show feature_applicability" do
    get feature_applicability_url(@feature_applicability)
    assert_response :success
  end

  test "should get edit" do
    get edit_feature_applicability_url(@feature_applicability)
    assert_response :success
  end

  test "should update feature_applicability" do
    patch feature_applicability_url(@feature_applicability), params: { feature_applicability: { applicability_type_id: @feature_applicability.applicability_type_id, feature_id: @feature_applicability.feature_id, from_date: @feature_applicability.from_date, good_id: @feature_applicability.good_id, thru_date: @feature_applicability.thru_date } }
    assert_redirected_to feature_applicability_url(@feature_applicability)
  end

  test "should destroy feature_applicability" do
    assert_difference("FeatureApplicability.count", -1) do
      delete feature_applicability_url(@feature_applicability)
    end

    assert_redirected_to feature_applicabilities_url
  end
end

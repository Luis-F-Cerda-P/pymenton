require "test_helper"

class ApplicabilityTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicability_type = applicability_types(:one)
  end

  test "should get index" do
    get applicability_types_url
    assert_response :success
  end

  test "should get new" do
    get new_applicability_type_url
    assert_response :success
  end

  test "should create applicability_type" do
    assert_difference("ApplicabilityType.count") do
      post applicability_types_url, params: { applicability_type: { description: @applicability_type.description } }
    end

    assert_redirected_to applicability_type_url(ApplicabilityType.last)
  end

  test "should show applicability_type" do
    get applicability_type_url(@applicability_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicability_type_url(@applicability_type)
    assert_response :success
  end

  test "should update applicability_type" do
    patch applicability_type_url(@applicability_type), params: { applicability_type: { description: @applicability_type.description } }
    assert_redirected_to applicability_type_url(@applicability_type)
  end

  test "should destroy applicability_type" do
    assert_difference("ApplicabilityType.count", -1) do
      delete applicability_type_url(@applicability_type)
    end

    assert_redirected_to applicability_types_url
  end
end

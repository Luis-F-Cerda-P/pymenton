require "test_helper"

class ReorderGuidelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reorder_guideline = reorder_guidelines(:one)
  end

  test "should get index" do
    get reorder_guidelines_url
    assert_response :success
  end

  test "should get new" do
    get new_reorder_guideline_url
    assert_response :success
  end

  test "should create reorder_guideline" do
    assert_difference("ReorderGuideline.count") do
      post reorder_guidelines_url, params: { reorder_guideline: { facility_id: @reorder_guideline.facility_id, from_date: @reorder_guideline.from_date, good_id: @reorder_guideline.good_id, reorder_level: @reorder_guideline.reorder_level, reorder_quantity: @reorder_guideline.reorder_quantity, thru_date: @reorder_guideline.thru_date } }
    end

    assert_redirected_to reorder_guideline_url(ReorderGuideline.last)
  end

  test "should show reorder_guideline" do
    get reorder_guideline_url(@reorder_guideline)
    assert_response :success
  end

  test "should get edit" do
    get edit_reorder_guideline_url(@reorder_guideline)
    assert_response :success
  end

  test "should update reorder_guideline" do
    patch reorder_guideline_url(@reorder_guideline), params: { reorder_guideline: { facility_id: @reorder_guideline.facility_id, from_date: @reorder_guideline.from_date, good_id: @reorder_guideline.good_id, reorder_level: @reorder_guideline.reorder_level, reorder_quantity: @reorder_guideline.reorder_quantity, thru_date: @reorder_guideline.thru_date } }
    assert_redirected_to reorder_guideline_url(@reorder_guideline)
  end

  test "should destroy reorder_guideline" do
    assert_difference("ReorderGuideline.count", -1) do
      delete reorder_guideline_url(@reorder_guideline)
    end

    assert_redirected_to reorder_guidelines_url
  end
end

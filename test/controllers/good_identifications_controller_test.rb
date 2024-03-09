require "test_helper"

class GoodIdentificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good_identification = good_identifications(:one)
  end

  test "should get index" do
    get good_identifications_url
    assert_response :success
  end

  test "should get new" do
    get new_good_identification_url
    assert_response :success
  end

  test "should create good_identification" do
    assert_difference("GoodIdentification.count") do
      post good_identifications_url, params: { good_identification: { good_id: @good_identification.good_id, identification_id: @good_identification.identification_id } }
    end

    assert_redirected_to good_identification_url(GoodIdentification.last)
  end

  test "should show good_identification" do
    get good_identification_url(@good_identification)
    assert_response :success
  end

  test "should get edit" do
    get edit_good_identification_url(@good_identification)
    assert_response :success
  end

  test "should update good_identification" do
    patch good_identification_url(@good_identification), params: { good_identification: { good_id: @good_identification.good_id, identification_id: @good_identification.identification_id } }
    assert_redirected_to good_identification_url(@good_identification)
  end

  test "should destroy good_identification" do
    assert_difference("GoodIdentification.count", -1) do
      delete good_identification_url(@good_identification)
    end

    assert_redirected_to good_identifications_url
  end
end

require "test_helper"

class IdentificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @identification = identifications(:one)
  end

  test "should get index" do
    get identifications_url
    assert_response :success
  end

  test "should get new" do
    get new_identification_url
    assert_response :success
  end

  test "should create identification" do
    assert_difference("Identification.count") do
      post identifications_url, params: { identification: { identification_type_id: @identification.identification_type_id, value: @identification.value } }
    end

    assert_redirected_to identification_url(Identification.last)
  end

  test "should show identification" do
    get identification_url(@identification)
    assert_response :success
  end

  test "should get edit" do
    get edit_identification_url(@identification)
    assert_response :success
  end

  test "should update identification" do
    patch identification_url(@identification), params: { identification: { identification_type_id: @identification.identification_type_id, value: @identification.value } }
    assert_redirected_to identification_url(@identification)
  end

  test "should destroy identification" do
    assert_difference("Identification.count", -1) do
      delete identification_url(@identification)
    end

    assert_redirected_to identifications_url
  end
end

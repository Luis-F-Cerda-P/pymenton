require "test_helper"

class ShipmentStatusTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment_status_type = shipment_status_types(:one)
  end

  test "should get index" do
    get shipment_status_types_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_status_type_url
    assert_response :success
  end

  test "should create shipment_status_type" do
    assert_difference("ShipmentStatusType.count") do
      post shipment_status_types_url, params: { shipment_status_type: { description: @shipment_status_type.description } }
    end

    assert_redirected_to shipment_status_type_url(ShipmentStatusType.last)
  end

  test "should show shipment_status_type" do
    get shipment_status_type_url(@shipment_status_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_status_type_url(@shipment_status_type)
    assert_response :success
  end

  test "should update shipment_status_type" do
    patch shipment_status_type_url(@shipment_status_type), params: { shipment_status_type: { description: @shipment_status_type.description } }
    assert_redirected_to shipment_status_type_url(@shipment_status_type)
  end

  test "should destroy shipment_status_type" do
    assert_difference("ShipmentStatusType.count", -1) do
      delete shipment_status_type_url(@shipment_status_type)
    end

    assert_redirected_to shipment_status_types_url
  end
end

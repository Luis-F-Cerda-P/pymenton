require "test_helper"

class ShipmentItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment_item = shipment_items(:one)
  end

  test "should get index" do
    get shipment_items_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_item_url
    assert_response :success
  end

  test "should create shipment_item" do
    assert_difference("ShipmentItem.count") do
      post shipment_items_url, params: { shipment_item: { feature_applicability_id: @shipment_item.feature_applicability_id, good_id: @shipment_item.good_id, quantity: @shipment_item.quantity, shipment_id: @shipment_item.shipment_id } }
    end

    assert_redirected_to shipment_item_url(ShipmentItem.last)
  end

  test "should show shipment_item" do
    get shipment_item_url(@shipment_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_item_url(@shipment_item)
    assert_response :success
  end

  test "should update shipment_item" do
    patch shipment_item_url(@shipment_item), params: { shipment_item: { feature_applicability_id: @shipment_item.feature_applicability_id, good_id: @shipment_item.good_id, quantity: @shipment_item.quantity, shipment_id: @shipment_item.shipment_id } }
    assert_redirected_to shipment_item_url(@shipment_item)
  end

  test "should destroy shipment_item" do
    assert_difference("ShipmentItem.count", -1) do
      delete shipment_item_url(@shipment_item)
    end

    assert_redirected_to shipment_items_url
  end
end

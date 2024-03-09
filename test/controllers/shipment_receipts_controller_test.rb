require "test_helper"

class ShipmentReceiptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment_receipt = shipment_receipts(:one)
  end

  test "should get index" do
    get shipment_receipts_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_receipt_url
    assert_response :success
  end

  test "should create shipment_receipt" do
    assert_difference("ShipmentReceipt.count") do
      post shipment_receipts_url, params: { shipment_receipt: { inventory_item_id: @shipment_receipt.inventory_item_id, order_item_id: @shipment_receipt.order_item_id, quantity_accepted: @shipment_receipt.quantity_accepted, shipment_id: @shipment_receipt.shipment_id, shipment_package_id: @shipment_receipt.shipment_package_id } }
    end

    assert_redirected_to shipment_receipt_url(ShipmentReceipt.last)
  end

  test "should show shipment_receipt" do
    get shipment_receipt_url(@shipment_receipt)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_receipt_url(@shipment_receipt)
    assert_response :success
  end

  test "should update shipment_receipt" do
    patch shipment_receipt_url(@shipment_receipt), params: { shipment_receipt: { inventory_item_id: @shipment_receipt.inventory_item_id, order_item_id: @shipment_receipt.order_item_id, quantity_accepted: @shipment_receipt.quantity_accepted, shipment_id: @shipment_receipt.shipment_id, shipment_package_id: @shipment_receipt.shipment_package_id } }
    assert_redirected_to shipment_receipt_url(@shipment_receipt)
  end

  test "should destroy shipment_receipt" do
    assert_difference("ShipmentReceipt.count", -1) do
      delete shipment_receipt_url(@shipment_receipt)
    end

    assert_redirected_to shipment_receipts_url
  end
end

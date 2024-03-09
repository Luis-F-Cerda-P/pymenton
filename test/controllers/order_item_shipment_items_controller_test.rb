require "test_helper"

class OrderItemShipmentItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_item_shipment_item = order_item_shipment_items(:one)
  end

  test "should get index" do
    get order_item_shipment_items_url
    assert_response :success
  end

  test "should get new" do
    get new_order_item_shipment_item_url
    assert_response :success
  end

  test "should create order_item_shipment_item" do
    assert_difference("OrderItemShipmentItem.count") do
      post order_item_shipment_items_url, params: { order_item_shipment_item: { order_item_id: @order_item_shipment_item.order_item_id, quantity: @order_item_shipment_item.quantity, shipment_item_id: @order_item_shipment_item.shipment_item_id } }
    end

    assert_redirected_to order_item_shipment_item_url(OrderItemShipmentItem.last)
  end

  test "should show order_item_shipment_item" do
    get order_item_shipment_item_url(@order_item_shipment_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_item_shipment_item_url(@order_item_shipment_item)
    assert_response :success
  end

  test "should update order_item_shipment_item" do
    patch order_item_shipment_item_url(@order_item_shipment_item), params: { order_item_shipment_item: { order_item_id: @order_item_shipment_item.order_item_id, quantity: @order_item_shipment_item.quantity, shipment_item_id: @order_item_shipment_item.shipment_item_id } }
    assert_redirected_to order_item_shipment_item_url(@order_item_shipment_item)
  end

  test "should destroy order_item_shipment_item" do
    assert_difference("OrderItemShipmentItem.count", -1) do
      delete order_item_shipment_item_url(@order_item_shipment_item)
    end

    assert_redirected_to order_item_shipment_items_url
  end
end

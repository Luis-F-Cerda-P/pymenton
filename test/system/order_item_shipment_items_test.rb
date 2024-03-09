require "application_system_test_case"

class OrderItemShipmentItemsTest < ApplicationSystemTestCase
  setup do
    @order_item_shipment_item = order_item_shipment_items(:one)
  end

  test "visiting the index" do
    visit order_item_shipment_items_url
    assert_selector "h1", text: "Order item shipment items"
  end

  test "should create order item shipment item" do
    visit order_item_shipment_items_url
    click_on "New order item shipment item"

    fill_in "Order item", with: @order_item_shipment_item.order_item_id
    fill_in "Quantity", with: @order_item_shipment_item.quantity
    fill_in "Shipment item", with: @order_item_shipment_item.shipment_item_id
    click_on "Create Order item shipment item"

    assert_text "Order item shipment item was successfully created"
    click_on "Back"
  end

  test "should update Order item shipment item" do
    visit order_item_shipment_item_url(@order_item_shipment_item)
    click_on "Edit this order item shipment item", match: :first

    fill_in "Order item", with: @order_item_shipment_item.order_item_id
    fill_in "Quantity", with: @order_item_shipment_item.quantity
    fill_in "Shipment item", with: @order_item_shipment_item.shipment_item_id
    click_on "Update Order item shipment item"

    assert_text "Order item shipment item was successfully updated"
    click_on "Back"
  end

  test "should destroy Order item shipment item" do
    visit order_item_shipment_item_url(@order_item_shipment_item)
    click_on "Destroy this order item shipment item", match: :first

    assert_text "Order item shipment item was successfully destroyed"
  end
end

require "application_system_test_case"

class ShipmentReceiptsTest < ApplicationSystemTestCase
  setup do
    @shipment_receipt = shipment_receipts(:one)
  end

  test "visiting the index" do
    visit shipment_receipts_url
    assert_selector "h1", text: "Shipment receipts"
  end

  test "should create shipment receipt" do
    visit shipment_receipts_url
    click_on "New shipment receipt"

    fill_in "Inventory item", with: @shipment_receipt.inventory_item_id
    fill_in "Order item", with: @shipment_receipt.order_item_id
    fill_in "Quantity accepted", with: @shipment_receipt.quantity_accepted
    fill_in "Shipment", with: @shipment_receipt.shipment_id
    fill_in "Shipment package", with: @shipment_receipt.shipment_package_id
    click_on "Create Shipment receipt"

    assert_text "Shipment receipt was successfully created"
    click_on "Back"
  end

  test "should update Shipment receipt" do
    visit shipment_receipt_url(@shipment_receipt)
    click_on "Edit this shipment receipt", match: :first

    fill_in "Inventory item", with: @shipment_receipt.inventory_item_id
    fill_in "Order item", with: @shipment_receipt.order_item_id
    fill_in "Quantity accepted", with: @shipment_receipt.quantity_accepted
    fill_in "Shipment", with: @shipment_receipt.shipment_id
    fill_in "Shipment package", with: @shipment_receipt.shipment_package_id
    click_on "Update Shipment receipt"

    assert_text "Shipment receipt was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment receipt" do
    visit shipment_receipt_url(@shipment_receipt)
    click_on "Destroy this shipment receipt", match: :first

    assert_text "Shipment receipt was successfully destroyed"
  end
end

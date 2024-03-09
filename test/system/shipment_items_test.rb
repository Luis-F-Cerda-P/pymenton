require "application_system_test_case"

class ShipmentItemsTest < ApplicationSystemTestCase
  setup do
    @shipment_item = shipment_items(:one)
  end

  test "visiting the index" do
    visit shipment_items_url
    assert_selector "h1", text: "Shipment items"
  end

  test "should create shipment item" do
    visit shipment_items_url
    click_on "New shipment item"

    fill_in "Feature applicability", with: @shipment_item.feature_applicability_id
    fill_in "Good", with: @shipment_item.good_id
    fill_in "Quantity", with: @shipment_item.quantity
    fill_in "Shipment", with: @shipment_item.shipment_id
    click_on "Create Shipment item"

    assert_text "Shipment item was successfully created"
    click_on "Back"
  end

  test "should update Shipment item" do
    visit shipment_item_url(@shipment_item)
    click_on "Edit this shipment item", match: :first

    fill_in "Feature applicability", with: @shipment_item.feature_applicability_id
    fill_in "Good", with: @shipment_item.good_id
    fill_in "Quantity", with: @shipment_item.quantity
    fill_in "Shipment", with: @shipment_item.shipment_id
    click_on "Update Shipment item"

    assert_text "Shipment item was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment item" do
    visit shipment_item_url(@shipment_item)
    click_on "Destroy this shipment item", match: :first

    assert_text "Shipment item was successfully destroyed"
  end
end

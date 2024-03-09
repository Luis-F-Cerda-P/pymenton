require "application_system_test_case"

class ItemIssuancesTest < ApplicationSystemTestCase
  setup do
    @item_issuance = item_issuances(:one)
  end

  test "visiting the index" do
    visit item_issuances_url
    assert_selector "h1", text: "Item issuances"
  end

  test "should create item issuance" do
    visit item_issuances_url
    click_on "New item issuance"

    fill_in "Inventory item", with: @item_issuance.inventory_item_id
    fill_in "Picklist item", with: @item_issuance.picklist_item_id
    fill_in "Quantity", with: @item_issuance.quantity
    fill_in "Shipment item", with: @item_issuance.shipment_item_id
    click_on "Create Item issuance"

    assert_text "Item issuance was successfully created"
    click_on "Back"
  end

  test "should update Item issuance" do
    visit item_issuance_url(@item_issuance)
    click_on "Edit this item issuance", match: :first

    fill_in "Inventory item", with: @item_issuance.inventory_item_id
    fill_in "Picklist item", with: @item_issuance.picklist_item_id
    fill_in "Quantity", with: @item_issuance.quantity
    fill_in "Shipment item", with: @item_issuance.shipment_item_id
    click_on "Update Item issuance"

    assert_text "Item issuance was successfully updated"
    click_on "Back"
  end

  test "should destroy Item issuance" do
    visit item_issuance_url(@item_issuance)
    click_on "Destroy this item issuance", match: :first

    assert_text "Item issuance was successfully destroyed"
  end
end

require "application_system_test_case"

class PicklistItemsTest < ApplicationSystemTestCase
  setup do
    @picklist_item = picklist_items(:one)
  end

  test "visiting the index" do
    visit picklist_items_url
    assert_selector "h1", text: "Picklist items"
  end

  test "should create picklist item" do
    visit picklist_items_url
    click_on "New picklist item"

    fill_in "Inventory item", with: @picklist_item.inventory_item_id
    fill_in "Picklist", with: @picklist_item.picklist_id
    fill_in "Quantity", with: @picklist_item.quantity
    click_on "Create Picklist item"

    assert_text "Picklist item was successfully created"
    click_on "Back"
  end

  test "should update Picklist item" do
    visit picklist_item_url(@picklist_item)
    click_on "Edit this picklist item", match: :first

    fill_in "Inventory item", with: @picklist_item.inventory_item_id
    fill_in "Picklist", with: @picklist_item.picklist_id
    fill_in "Quantity", with: @picklist_item.quantity
    click_on "Update Picklist item"

    assert_text "Picklist item was successfully updated"
    click_on "Back"
  end

  test "should destroy Picklist item" do
    visit picklist_item_url(@picklist_item)
    click_on "Destroy this picklist item", match: :first

    assert_text "Picklist item was successfully destroyed"
  end
end

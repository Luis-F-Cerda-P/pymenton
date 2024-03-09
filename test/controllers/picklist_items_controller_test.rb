require "test_helper"

class PicklistItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picklist_item = picklist_items(:one)
  end

  test "should get index" do
    get picklist_items_url
    assert_response :success
  end

  test "should get new" do
    get new_picklist_item_url
    assert_response :success
  end

  test "should create picklist_item" do
    assert_difference("PicklistItem.count") do
      post picklist_items_url, params: { picklist_item: { inventory_item_id: @picklist_item.inventory_item_id, picklist_id: @picklist_item.picklist_id, quantity: @picklist_item.quantity } }
    end

    assert_redirected_to picklist_item_url(PicklistItem.last)
  end

  test "should show picklist_item" do
    get picklist_item_url(@picklist_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_picklist_item_url(@picklist_item)
    assert_response :success
  end

  test "should update picklist_item" do
    patch picklist_item_url(@picklist_item), params: { picklist_item: { inventory_item_id: @picklist_item.inventory_item_id, picklist_id: @picklist_item.picklist_id, quantity: @picklist_item.quantity } }
    assert_redirected_to picklist_item_url(@picklist_item)
  end

  test "should destroy picklist_item" do
    assert_difference("PicklistItem.count", -1) do
      delete picklist_item_url(@picklist_item)
    end

    assert_redirected_to picklist_items_url
  end
end

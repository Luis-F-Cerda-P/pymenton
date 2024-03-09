require "test_helper"

class ItemIssuancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_issuance = item_issuances(:one)
  end

  test "should get index" do
    get item_issuances_url
    assert_response :success
  end

  test "should get new" do
    get new_item_issuance_url
    assert_response :success
  end

  test "should create item_issuance" do
    assert_difference("ItemIssuance.count") do
      post item_issuances_url, params: { item_issuance: { inventory_item_id: @item_issuance.inventory_item_id, picklist_item_id: @item_issuance.picklist_item_id, quantity: @item_issuance.quantity, shipment_item_id: @item_issuance.shipment_item_id } }
    end

    assert_redirected_to item_issuance_url(ItemIssuance.last)
  end

  test "should show item_issuance" do
    get item_issuance_url(@item_issuance)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_issuance_url(@item_issuance)
    assert_response :success
  end

  test "should update item_issuance" do
    patch item_issuance_url(@item_issuance), params: { item_issuance: { inventory_item_id: @item_issuance.inventory_item_id, picklist_item_id: @item_issuance.picklist_item_id, quantity: @item_issuance.quantity, shipment_item_id: @item_issuance.shipment_item_id } }
    assert_redirected_to item_issuance_url(@item_issuance)
  end

  test "should destroy item_issuance" do
    assert_difference("ItemIssuance.count", -1) do
      delete item_issuance_url(@item_issuance)
    end

    assert_redirected_to item_issuances_url
  end
end

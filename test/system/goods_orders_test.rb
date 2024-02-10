require "application_system_test_case"

class GoodsOrdersTest < ApplicationSystemTestCase
  setup do
    @goods_order = goods_orders(:one)
  end

  test "visiting the index" do
    visit goods_orders_url
    assert_selector "h1", text: "Goods orders"
  end

  test "should create goods order" do
    visit goods_orders_url
    click_on "New goods order"

    fill_in "Contact channel", with: @goods_order.contact_channel_id
    fill_in "Goods order type", with: @goods_order.goods_order_type_id
    fill_in "Transportation order", with: @goods_order.transportation_order_id
    click_on "Create Goods order"

    assert_text "Goods order was successfully created"
    click_on "Back"
  end

  test "should update Goods order" do
    visit goods_order_url(@goods_order)
    click_on "Edit this goods order", match: :first

    fill_in "Contact channel", with: @goods_order.contact_channel_id
    fill_in "Goods order type", with: @goods_order.goods_order_type_id
    fill_in "Transportation order", with: @goods_order.transportation_order_id
    click_on "Update Goods order"

    assert_text "Goods order was successfully updated"
    click_on "Back"
  end

  test "should destroy Goods order" do
    visit goods_order_url(@goods_order)
    click_on "Destroy this goods order", match: :first

    assert_text "Goods order was successfully destroyed"
  end
end

require "application_system_test_case"

class GoodsOrderDetailsTest < ApplicationSystemTestCase
  setup do
    @goods_order_detail = goods_order_details(:one)
  end

  test "visiting the index" do
    visit goods_order_details_url
    assert_selector "h1", text: "Goods order details"
  end

  test "should create goods order detail" do
    visit goods_order_details_url
    click_on "New goods order detail"

    fill_in "Price", with: @goods_order_detail.price
    fill_in "Quantity", with: @goods_order_detail.quantity
    click_on "Create Goods order detail"

    assert_text "Goods order detail was successfully created"
    click_on "Back"
  end

  test "should update Goods order detail" do
    visit goods_order_detail_url(@goods_order_detail)
    click_on "Edit this goods order detail", match: :first

    fill_in "Price", with: @goods_order_detail.price
    fill_in "Quantity", with: @goods_order_detail.quantity
    click_on "Update Goods order detail"

    assert_text "Goods order detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Goods order detail" do
    visit goods_order_detail_url(@goods_order_detail)
    click_on "Destroy this goods order detail", match: :first

    assert_text "Goods order detail was successfully destroyed"
  end
end

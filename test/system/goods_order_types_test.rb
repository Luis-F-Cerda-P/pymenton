require "application_system_test_case"

class GoodsOrderTypesTest < ApplicationSystemTestCase
  setup do
    @goods_order_type = goods_order_types(:one)
  end

  test "visiting the index" do
    visit goods_order_types_url
    assert_selector "h1", text: "Goods order types"
  end

  test "should create goods order type" do
    visit goods_order_types_url
    click_on "New goods order type"

    fill_in "Description", with: @goods_order_type.description
    click_on "Create Goods order type"

    assert_text "Goods order type was successfully created"
    click_on "Back"
  end

  test "should update Goods order type" do
    visit goods_order_type_url(@goods_order_type)
    click_on "Edit this goods order type", match: :first

    fill_in "Description", with: @goods_order_type.description
    click_on "Update Goods order type"

    assert_text "Goods order type was successfully updated"
    click_on "Back"
  end

  test "should destroy Goods order type" do
    visit goods_order_type_url(@goods_order_type)
    click_on "Destroy this goods order type", match: :first

    assert_text "Goods order type was successfully destroyed"
  end
end

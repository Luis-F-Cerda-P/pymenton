require "application_system_test_case"

class OrderTypesTest < ApplicationSystemTestCase
  setup do
    @order_type = order_types(:one)
  end

  test "visiting the index" do
    visit order_types_url
    assert_selector "h1", text: "Order types"
  end

  test "should create order type" do
    visit order_types_url
    click_on "New order type"

    fill_in "Description", with: @order_type.description
    click_on "Create Order type"

    assert_text "Order type was successfully created"
    click_on "Back"
  end

  test "should update Order type" do
    visit order_type_url(@order_type)
    click_on "Edit this order type", match: :first

    fill_in "Description", with: @order_type.description
    click_on "Update Order type"

    assert_text "Order type was successfully updated"
    click_on "Back"
  end

  test "should destroy Order type" do
    visit order_type_url(@order_type)
    click_on "Destroy this order type", match: :first

    assert_text "Order type was successfully destroyed"
  end
end

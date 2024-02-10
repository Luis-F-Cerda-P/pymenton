require "application_system_test_case"

class TransportationOrdersTest < ApplicationSystemTestCase
  setup do
    @transportation_order = transportation_orders(:one)
  end

  test "visiting the index" do
    visit transportation_orders_url
    assert_selector "h1", text: "Transportation orders"
  end

  test "should create transportation order" do
    visit transportation_orders_url
    click_on "New transportation order"

    fill_in "Person", with: @transportation_order.person_id
    fill_in "Transportation type", with: @transportation_order.transportation_type_id
    click_on "Create Transportation order"

    assert_text "Transportation order was successfully created"
    click_on "Back"
  end

  test "should update Transportation order" do
    visit transportation_order_url(@transportation_order)
    click_on "Edit this transportation order", match: :first

    fill_in "Person", with: @transportation_order.person_id
    fill_in "Transportation type", with: @transportation_order.transportation_type_id
    click_on "Update Transportation order"

    assert_text "Transportation order was successfully updated"
    click_on "Back"
  end

  test "should destroy Transportation order" do
    visit transportation_order_url(@transportation_order)
    click_on "Destroy this transportation order", match: :first

    assert_text "Transportation order was successfully destroyed"
  end
end

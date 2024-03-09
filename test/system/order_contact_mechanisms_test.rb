require "application_system_test_case"

class OrderContactMechanismsTest < ApplicationSystemTestCase
  setup do
    @order_contact_mechanism = order_contact_mechanisms(:one)
  end

  test "visiting the index" do
    visit order_contact_mechanisms_url
    assert_selector "h1", text: "Order contact mechanisms"
  end

  test "should create order contact mechanism" do
    visit order_contact_mechanisms_url
    click_on "New order contact mechanism"

    fill_in "Contact mechanism", with: @order_contact_mechanism.contact_mechanism_id
    fill_in "Order", with: @order_contact_mechanism.order_id
    click_on "Create Order contact mechanism"

    assert_text "Order contact mechanism was successfully created"
    click_on "Back"
  end

  test "should update Order contact mechanism" do
    visit order_contact_mechanism_url(@order_contact_mechanism)
    click_on "Edit this order contact mechanism", match: :first

    fill_in "Contact mechanism", with: @order_contact_mechanism.contact_mechanism_id
    fill_in "Order", with: @order_contact_mechanism.order_id
    click_on "Update Order contact mechanism"

    assert_text "Order contact mechanism was successfully updated"
    click_on "Back"
  end

  test "should destroy Order contact mechanism" do
    visit order_contact_mechanism_url(@order_contact_mechanism)
    click_on "Destroy this order contact mechanism", match: :first

    assert_text "Order contact mechanism was successfully destroyed"
  end
end

require "application_system_test_case"

class ShipmentStatusTypesTest < ApplicationSystemTestCase
  setup do
    @shipment_status_type = shipment_status_types(:one)
  end

  test "visiting the index" do
    visit shipment_status_types_url
    assert_selector "h1", text: "Shipment status types"
  end

  test "should create shipment status type" do
    visit shipment_status_types_url
    click_on "New shipment status type"

    fill_in "Description", with: @shipment_status_type.description
    click_on "Create Shipment status type"

    assert_text "Shipment status type was successfully created"
    click_on "Back"
  end

  test "should update Shipment status type" do
    visit shipment_status_type_url(@shipment_status_type)
    click_on "Edit this shipment status type", match: :first

    fill_in "Description", with: @shipment_status_type.description
    click_on "Update Shipment status type"

    assert_text "Shipment status type was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment status type" do
    visit shipment_status_type_url(@shipment_status_type)
    click_on "Destroy this shipment status type", match: :first

    assert_text "Shipment status type was successfully destroyed"
  end
end

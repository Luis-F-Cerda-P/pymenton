require "application_system_test_case"

class ShipmentStatusesTest < ApplicationSystemTestCase
  setup do
    @shipment_status = shipment_statuses(:one)
  end

  test "visiting the index" do
    visit shipment_statuses_url
    assert_selector "h1", text: "Shipment statuses"
  end

  test "should create shipment status" do
    visit shipment_statuses_url
    click_on "New shipment status"

    fill_in "Shipment", with: @shipment_status.shipment_id
    fill_in "Shipment status type", with: @shipment_status.shipment_status_type_id
    click_on "Create Shipment status"

    assert_text "Shipment status was successfully created"
    click_on "Back"
  end

  test "should update Shipment status" do
    visit shipment_status_url(@shipment_status)
    click_on "Edit this shipment status", match: :first

    fill_in "Shipment", with: @shipment_status.shipment_id
    fill_in "Shipment status type", with: @shipment_status.shipment_status_type_id
    click_on "Update Shipment status"

    assert_text "Shipment status was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment status" do
    visit shipment_status_url(@shipment_status)
    click_on "Destroy this shipment status", match: :first

    assert_text "Shipment status was successfully destroyed"
  end
end

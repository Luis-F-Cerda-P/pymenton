require "application_system_test_case"

class ShipmentTypesTest < ApplicationSystemTestCase
  setup do
    @shipment_type = shipment_types(:one)
  end

  test "visiting the index" do
    visit shipment_types_url
    assert_selector "h1", text: "Shipment types"
  end

  test "should create shipment type" do
    visit shipment_types_url
    click_on "New shipment type"

    fill_in "Description", with: @shipment_type.description
    click_on "Create Shipment type"

    assert_text "Shipment type was successfully created"
    click_on "Back"
  end

  test "should update Shipment type" do
    visit shipment_type_url(@shipment_type)
    click_on "Edit this shipment type", match: :first

    fill_in "Description", with: @shipment_type.description
    click_on "Update Shipment type"

    assert_text "Shipment type was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment type" do
    visit shipment_type_url(@shipment_type)
    click_on "Destroy this shipment type", match: :first

    assert_text "Shipment type was successfully destroyed"
  end
end

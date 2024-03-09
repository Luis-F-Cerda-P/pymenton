require "application_system_test_case"

class ShipmentPackagesTest < ApplicationSystemTestCase
  setup do
    @shipment_package = shipment_packages(:one)
  end

  test "visiting the index" do
    visit shipment_packages_url
    assert_selector "h1", text: "Shipment packages"
  end

  test "should create shipment package" do
    visit shipment_packages_url
    click_on "New shipment package"

    fill_in "Shipment", with: @shipment_package.shipment_id
    click_on "Create Shipment package"

    assert_text "Shipment package was successfully created"
    click_on "Back"
  end

  test "should update Shipment package" do
    visit shipment_package_url(@shipment_package)
    click_on "Edit this shipment package", match: :first

    fill_in "Shipment", with: @shipment_package.shipment_id
    click_on "Update Shipment package"

    assert_text "Shipment package was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment package" do
    visit shipment_package_url(@shipment_package)
    click_on "Destroy this shipment package", match: :first

    assert_text "Shipment package was successfully destroyed"
  end
end

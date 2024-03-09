require "application_system_test_case"

class PackagingContentsTest < ApplicationSystemTestCase
  setup do
    @packaging_content = packaging_contents(:one)
  end

  test "visiting the index" do
    visit packaging_contents_url
    assert_selector "h1", text: "Packaging contents"
  end

  test "should create packaging content" do
    visit packaging_contents_url
    click_on "New packaging content"

    fill_in "Quantity", with: @packaging_content.quantity
    fill_in "Shipment item", with: @packaging_content.shipment_item_id
    fill_in "Shipment package", with: @packaging_content.shipment_package_id
    click_on "Create Packaging content"

    assert_text "Packaging content was successfully created"
    click_on "Back"
  end

  test "should update Packaging content" do
    visit packaging_content_url(@packaging_content)
    click_on "Edit this packaging content", match: :first

    fill_in "Quantity", with: @packaging_content.quantity
    fill_in "Shipment item", with: @packaging_content.shipment_item_id
    fill_in "Shipment package", with: @packaging_content.shipment_package_id
    click_on "Update Packaging content"

    assert_text "Packaging content was successfully updated"
    click_on "Back"
  end

  test "should destroy Packaging content" do
    visit packaging_content_url(@packaging_content)
    click_on "Destroy this packaging content", match: :first

    assert_text "Packaging content was successfully destroyed"
  end
end

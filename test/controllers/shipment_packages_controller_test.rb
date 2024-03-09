require "test_helper"

class ShipmentPackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment_package = shipment_packages(:one)
  end

  test "should get index" do
    get shipment_packages_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_package_url
    assert_response :success
  end

  test "should create shipment_package" do
    assert_difference("ShipmentPackage.count") do
      post shipment_packages_url, params: { shipment_package: { shipment_id: @shipment_package.shipment_id } }
    end

    assert_redirected_to shipment_package_url(ShipmentPackage.last)
  end

  test "should show shipment_package" do
    get shipment_package_url(@shipment_package)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_package_url(@shipment_package)
    assert_response :success
  end

  test "should update shipment_package" do
    patch shipment_package_url(@shipment_package), params: { shipment_package: { shipment_id: @shipment_package.shipment_id } }
    assert_redirected_to shipment_package_url(@shipment_package)
  end

  test "should destroy shipment_package" do
    assert_difference("ShipmentPackage.count", -1) do
      delete shipment_package_url(@shipment_package)
    end

    assert_redirected_to shipment_packages_url
  end
end

require "test_helper"

class PackagingContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @packaging_content = packaging_contents(:one)
  end

  test "should get index" do
    get packaging_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_packaging_content_url
    assert_response :success
  end

  test "should create packaging_content" do
    assert_difference("PackagingContent.count") do
      post packaging_contents_url, params: { packaging_content: { quantity: @packaging_content.quantity, shipment_item_id: @packaging_content.shipment_item_id, shipment_package_id: @packaging_content.shipment_package_id } }
    end

    assert_redirected_to packaging_content_url(PackagingContent.last)
  end

  test "should show packaging_content" do
    get packaging_content_url(@packaging_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_packaging_content_url(@packaging_content)
    assert_response :success
  end

  test "should update packaging_content" do
    patch packaging_content_url(@packaging_content), params: { packaging_content: { quantity: @packaging_content.quantity, shipment_item_id: @packaging_content.shipment_item_id, shipment_package_id: @packaging_content.shipment_package_id } }
    assert_redirected_to packaging_content_url(@packaging_content)
  end

  test "should destroy packaging_content" do
    assert_difference("PackagingContent.count", -1) do
      delete packaging_content_url(@packaging_content)
    end

    assert_redirected_to packaging_contents_url
  end
end

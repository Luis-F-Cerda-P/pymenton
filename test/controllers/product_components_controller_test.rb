require "test_helper"

class ProductComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_component = product_components(:one)
  end

  test "should get index" do
    get product_components_url
    assert_response :success
  end

  test "should get new" do
    get new_product_component_url
    assert_response :success
  end

  test "should create product_component" do
    assert_difference("ProductComponent.count") do
      post product_components_url, params: { product_component: { date_from: @product_component.date_from, date_thru: @product_component.date_thru, good_id: @product_component.good_id, quantity: @product_component.quantity } }
    end

    assert_redirected_to product_component_url(ProductComponent.last)
  end

  test "should show product_component" do
    get product_component_url(@product_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_component_url(@product_component)
    assert_response :success
  end

  test "should update product_component" do
    patch product_component_url(@product_component), params: { product_component: { date_from: @product_component.date_from, date_thru: @product_component.date_thru, good_id: @product_component.good_id, quantity: @product_component.quantity } }
    assert_redirected_to product_component_url(@product_component)
  end

  test "should destroy product_component" do
    assert_difference("ProductComponent.count", -1) do
      delete product_component_url(@product_component)
    end

    assert_redirected_to product_components_url
  end
end

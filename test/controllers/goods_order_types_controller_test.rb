require "test_helper"

class GoodsOrderTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goods_order_type = goods_order_types(:one)
  end

  test "should get index" do
    get goods_order_types_url
    assert_response :success
  end

  test "should get new" do
    get new_goods_order_type_url
    assert_response :success
  end

  test "should create goods_order_type" do
    assert_difference("GoodsOrderType.count") do
      post goods_order_types_url, params: { goods_order_type: { description: @goods_order_type.description } }
    end

    assert_redirected_to goods_order_type_url(GoodsOrderType.last)
  end

  test "should show goods_order_type" do
    get goods_order_type_url(@goods_order_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_goods_order_type_url(@goods_order_type)
    assert_response :success
  end

  test "should update goods_order_type" do
    patch goods_order_type_url(@goods_order_type), params: { goods_order_type: { description: @goods_order_type.description } }
    assert_redirected_to goods_order_type_url(@goods_order_type)
  end

  test "should destroy goods_order_type" do
    assert_difference("GoodsOrderType.count", -1) do
      delete goods_order_type_url(@goods_order_type)
    end

    assert_redirected_to goods_order_types_url
  end
end

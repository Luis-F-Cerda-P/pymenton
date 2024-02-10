require "test_helper"

class GoodsOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goods_order = goods_orders(:one)
  end

  test "should get index" do
    get goods_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_goods_order_url
    assert_response :success
  end

  test "should create goods_order" do
    assert_difference("GoodsOrder.count") do
      post goods_orders_url, params: { goods_order: { contact_channel_id: @goods_order.contact_channel_id, goods_order_type_id: @goods_order.goods_order_type_id, transportation_order_id: @goods_order.transportation_order_id } }
    end

    assert_redirected_to goods_order_url(GoodsOrder.last)
  end

  test "should show goods_order" do
    get goods_order_url(@goods_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_goods_order_url(@goods_order)
    assert_response :success
  end

  test "should update goods_order" do
    patch goods_order_url(@goods_order), params: { goods_order: { contact_channel_id: @goods_order.contact_channel_id, goods_order_type_id: @goods_order.goods_order_type_id, transportation_order_id: @goods_order.transportation_order_id } }
    assert_redirected_to goods_order_url(@goods_order)
  end

  test "should destroy goods_order" do
    assert_difference("GoodsOrder.count", -1) do
      delete goods_order_url(@goods_order)
    end

    assert_redirected_to goods_orders_url
  end
end

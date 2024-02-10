require "test_helper"

class GoodsOrderDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goods_order_detail = goods_order_details(:one)
  end

  test "should get index" do
    get goods_order_details_url
    assert_response :success
  end

  test "should get new" do
    get new_goods_order_detail_url
    assert_response :success
  end

  test "should create goods_order_detail" do
    assert_difference("GoodsOrderDetail.count") do
      post goods_order_details_url, params: { goods_order_detail: { price: @goods_order_detail.price, quantity: @goods_order_detail.quantity } }
    end

    assert_redirected_to goods_order_detail_url(GoodsOrderDetail.last)
  end

  test "should show goods_order_detail" do
    get goods_order_detail_url(@goods_order_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_goods_order_detail_url(@goods_order_detail)
    assert_response :success
  end

  test "should update goods_order_detail" do
    patch goods_order_detail_url(@goods_order_detail), params: { goods_order_detail: { price: @goods_order_detail.price, quantity: @goods_order_detail.quantity } }
    assert_redirected_to goods_order_detail_url(@goods_order_detail)
  end

  test "should destroy goods_order_detail" do
    assert_difference("GoodsOrderDetail.count", -1) do
      delete goods_order_detail_url(@goods_order_detail)
    end

    assert_redirected_to goods_order_details_url
  end
end

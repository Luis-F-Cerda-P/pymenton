require "test_helper"

class TransportationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transportation_type = transportation_types(:one)
  end

  test "should get index" do
    get transportation_types_url
    assert_response :success
  end

  test "should get new" do
    get new_transportation_type_url
    assert_response :success
  end

  test "should create transportation_type" do
    assert_difference("TransportationType.count") do
      post transportation_types_url, params: { transportation_type: { associated_costs: @transportation_type.associated_costs, description: @transportation_type.description } }
    end

    assert_redirected_to transportation_type_url(TransportationType.last)
  end

  test "should show transportation_type" do
    get transportation_type_url(@transportation_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_transportation_type_url(@transportation_type)
    assert_response :success
  end

  test "should update transportation_type" do
    patch transportation_type_url(@transportation_type), params: { transportation_type: { associated_costs: @transportation_type.associated_costs, description: @transportation_type.description } }
    assert_redirected_to transportation_type_url(@transportation_type)
  end

  test "should destroy transportation_type" do
    assert_difference("TransportationType.count", -1) do
      delete transportation_type_url(@transportation_type)
    end

    assert_redirected_to transportation_types_url
  end
end

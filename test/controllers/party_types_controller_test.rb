require "test_helper"

class PartyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_type = party_types(:one)
  end

  test "should get index" do
    get party_types_url
    assert_response :success
  end

  test "should get new" do
    get new_party_type_url
    assert_response :success
  end

  test "should create party_type" do
    assert_difference("PartyType.count") do
      post party_types_url, params: { party_type: { description: @party_type.description } }
    end

    assert_redirected_to party_type_url(PartyType.last)
  end

  test "should show party_type" do
    get party_type_url(@party_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_party_type_url(@party_type)
    assert_response :success
  end

  test "should update party_type" do
    patch party_type_url(@party_type), params: { party_type: { description: @party_type.description } }
    assert_redirected_to party_type_url(@party_type)
  end

  test "should destroy party_type" do
    assert_difference("PartyType.count", -1) do
      delete party_type_url(@party_type)
    end

    assert_redirected_to party_types_url
  end
end

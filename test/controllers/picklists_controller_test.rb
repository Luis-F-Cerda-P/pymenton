require "test_helper"

class PicklistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picklist = picklists(:one)
  end

  test "should get index" do
    get picklists_url
    assert_response :success
  end

  test "should get new" do
    get new_picklist_url
    assert_response :success
  end

  test "should create picklist" do
    assert_difference("Picklist.count") do
      post picklists_url, params: { picklist: {  } }
    end

    assert_redirected_to picklist_url(Picklist.last)
  end

  test "should show picklist" do
    get picklist_url(@picklist)
    assert_response :success
  end

  test "should get edit" do
    get edit_picklist_url(@picklist)
    assert_response :success
  end

  test "should update picklist" do
    patch picklist_url(@picklist), params: { picklist: {  } }
    assert_redirected_to picklist_url(@picklist)
  end

  test "should destroy picklist" do
    assert_difference("Picklist.count", -1) do
      delete picklist_url(@picklist)
    end

    assert_redirected_to picklists_url
  end
end

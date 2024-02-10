require "test_helper"

class ContactChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_channel = contact_channels(:one)
  end

  test "should get index" do
    get contact_channels_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_channel_url
    assert_response :success
  end

  test "should create contact_channel" do
    assert_difference("ContactChannel.count") do
      post contact_channels_url, params: { contact_channel: { description: @contact_channel.description } }
    end

    assert_redirected_to contact_channel_url(ContactChannel.last)
  end

  test "should show contact_channel" do
    get contact_channel_url(@contact_channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_channel_url(@contact_channel)
    assert_response :success
  end

  test "should update contact_channel" do
    patch contact_channel_url(@contact_channel), params: { contact_channel: { description: @contact_channel.description } }
    assert_redirected_to contact_channel_url(@contact_channel)
  end

  test "should destroy contact_channel" do
    assert_difference("ContactChannel.count", -1) do
      delete contact_channel_url(@contact_channel)
    end

    assert_redirected_to contact_channels_url
  end
end

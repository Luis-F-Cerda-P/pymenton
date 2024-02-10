require "application_system_test_case"

class ContactChannelsTest < ApplicationSystemTestCase
  setup do
    @contact_channel = contact_channels(:one)
  end

  test "visiting the index" do
    visit contact_channels_url
    assert_selector "h1", text: "Contact channels"
  end

  test "should create contact channel" do
    visit contact_channels_url
    click_on "New contact channel"

    fill_in "Description", with: @contact_channel.description
    click_on "Create Contact channel"

    assert_text "Contact channel was successfully created"
    click_on "Back"
  end

  test "should update Contact channel" do
    visit contact_channel_url(@contact_channel)
    click_on "Edit this contact channel", match: :first

    fill_in "Description", with: @contact_channel.description
    click_on "Update Contact channel"

    assert_text "Contact channel was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact channel" do
    visit contact_channel_url(@contact_channel)
    click_on "Destroy this contact channel", match: :first

    assert_text "Contact channel was successfully destroyed"
  end
end

require "application_system_test_case"

class PicklistsTest < ApplicationSystemTestCase
  setup do
    @picklist = picklists(:one)
  end

  test "visiting the index" do
    visit picklists_url
    assert_selector "h1", text: "Picklists"
  end

  test "should create picklist" do
    visit picklists_url
    click_on "New picklist"

    click_on "Create Picklist"

    assert_text "Picklist was successfully created"
    click_on "Back"
  end

  test "should update Picklist" do
    visit picklist_url(@picklist)
    click_on "Edit this picklist", match: :first

    click_on "Update Picklist"

    assert_text "Picklist was successfully updated"
    click_on "Back"
  end

  test "should destroy Picklist" do
    visit picklist_url(@picklist)
    click_on "Destroy this picklist", match: :first

    assert_text "Picklist was successfully destroyed"
  end
end

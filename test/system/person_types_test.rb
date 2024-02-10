require "application_system_test_case"

class PersonTypesTest < ApplicationSystemTestCase
  setup do
    @person_type = person_types(:one)
  end

  test "visiting the index" do
    visit person_types_url
    assert_selector "h1", text: "Person types"
  end

  test "should create person type" do
    visit person_types_url
    click_on "New person type"

    fill_in "Description", with: @person_type.description
    click_on "Create Person type"

    assert_text "Person type was successfully created"
    click_on "Back"
  end

  test "should update Person type" do
    visit person_type_url(@person_type)
    click_on "Edit this person type", match: :first

    fill_in "Description", with: @person_type.description
    click_on "Update Person type"

    assert_text "Person type was successfully updated"
    click_on "Back"
  end

  test "should destroy Person type" do
    visit person_type_url(@person_type)
    click_on "Destroy this person type", match: :first

    assert_text "Person type was successfully destroyed"
  end
end

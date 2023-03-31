require "application_system_test_case"

class RecordStatusesTest < ApplicationSystemTestCase
  setup do
    @record_status = record_statuses(:one)
  end

  test "visiting the index" do
    visit record_statuses_url
    assert_selector "h1", text: "Record statuses"
  end

  test "should create record status" do
    visit record_statuses_url
    click_on "New record status"

    fill_in "About", with: @record_status.about
    fill_in "Code", with: @record_status.code
    fill_in "Description", with: @record_status.description
    click_on "Create Record status"

    assert_text "Record status was successfully created"
    click_on "Back"
  end

  test "should update Record status" do
    visit record_status_url(@record_status)
    click_on "Edit this record status", match: :first

    fill_in "About", with: @record_status.about
    fill_in "Code", with: @record_status.code
    fill_in "Description", with: @record_status.description
    click_on "Update Record status"

    assert_text "Record status was successfully updated"
    click_on "Back"
  end

  test "should destroy Record status" do
    visit record_status_url(@record_status)
    click_on "Destroy this record status", match: :first

    assert_text "Record status was successfully destroyed"
  end
end

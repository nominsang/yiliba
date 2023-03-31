require "test_helper"

class RecordStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record_status = record_statuses(:one)
  end

  test "should get index" do
    get record_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_record_status_url
    assert_response :success
  end

  test "should create record_status" do
    assert_difference("RecordStatus.count") do
      post record_statuses_url, params: { record_status: { about: @record_status.about, code: @record_status.code, description: @record_status.description } }
    end

    assert_redirected_to record_status_url(RecordStatus.last)
  end

  test "should show record_status" do
    get record_status_url(@record_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_status_url(@record_status)
    assert_response :success
  end

  test "should update record_status" do
    patch record_status_url(@record_status), params: { record_status: { about: @record_status.about, code: @record_status.code, description: @record_status.description } }
    assert_redirected_to record_status_url(@record_status)
  end

  test "should destroy record_status" do
    assert_difference("RecordStatus.count", -1) do
      delete record_status_url(@record_status)
    end

    assert_redirected_to record_statuses_url
  end
end

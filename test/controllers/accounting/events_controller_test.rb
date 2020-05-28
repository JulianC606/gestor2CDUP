require 'test_helper'

class Accounting::EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounting_event = accounting_events(:one)
  end

  test "should get index" do
    get accounting_events_url
    assert_response :success
  end

  test "should get new" do
    get new_accounting_event_url
    assert_response :success
  end

  test "should create accounting_event" do
    assert_difference('Accounting::Event.count') do
      post accounting_events_url, params: { accounting_event: {  } }
    end

    assert_redirected_to accounting_event_url(Accounting::Event.last)
  end

  test "should show accounting_event" do
    get accounting_event_url(@accounting_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounting_event_url(@accounting_event)
    assert_response :success
  end

  test "should update accounting_event" do
    patch accounting_event_url(@accounting_event), params: { accounting_event: {  } }
    assert_redirected_to accounting_event_url(@accounting_event)
  end

  test "should destroy accounting_event" do
    assert_difference('Accounting::Event.count', -1) do
      delete accounting_event_url(@accounting_event)
    end

    assert_redirected_to accounting_events_url
  end
end

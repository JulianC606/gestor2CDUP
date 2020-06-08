require 'test_helper'

class Accounting::EntryLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounting_entry_line = accounting_entry_lines(:one)
  end

  test "should get index" do
    get accounting_entry_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_accounting_entry_line_url
    assert_response :success
  end

  test "should create accounting_entry_line" do
    assert_difference('Accounting::EntryLine.count') do
      post accounting_entry_lines_url, params: { accounting_entry_line: { account_number: @accounting_entry_line.account_number, credit: @accounting_entry_line.credit, debit: @accounting_entry_line.debit } }
    end

    assert_redirected_to accounting_entry_line_url(Accounting::EntryLine.last)
  end

  test "should show accounting_entry_line" do
    get accounting_entry_line_url(@accounting_entry_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounting_entry_line_url(@accounting_entry_line)
    assert_response :success
  end

  test "should update accounting_entry_line" do
    patch accounting_entry_line_url(@accounting_entry_line), params: { accounting_entry_line: { account_number: @accounting_entry_line.account_number, credit: @accounting_entry_line.credit, debit: @accounting_entry_line.debit } }
    assert_redirected_to accounting_entry_line_url(@accounting_entry_line)
  end

  test "should destroy accounting_entry_line" do
    assert_difference('Accounting::EntryLine.count', -1) do
      delete accounting_entry_line_url(@accounting_entry_line)
    end

    assert_redirected_to accounting_entry_lines_url
  end
end

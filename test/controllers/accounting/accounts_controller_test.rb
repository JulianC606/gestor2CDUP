require 'test_helper'

class Accounting::AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounting_account = accounting_accounts(:one)
  end

  test "should get index" do
    get accounting_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_accounting_account_url
    assert_response :success
  end

  test "should create accounting_account" do
    assert_difference('Accounting::Account.count') do
      post accounting_accounts_url, params: { accounting_account: {  } }
    end

    assert_redirected_to accounting_account_url(Accounting::Account.last)
  end

  test "should show accounting_account" do
    get accounting_account_url(@accounting_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounting_account_url(@accounting_account)
    assert_response :success
  end

  test "should update accounting_account" do
    patch accounting_account_url(@accounting_account), params: { accounting_account: {  } }
    assert_redirected_to accounting_account_url(@accounting_account)
  end

  test "should destroy accounting_account" do
    assert_difference('Accounting::Account.count', -1) do
      delete accounting_account_url(@accounting_account)
    end

    assert_redirected_to accounting_accounts_url
  end
end

require 'test_helper'

class Accounting::TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounting_transaction = accounting_transactions(:one)
  end

  test "should get index" do
    get accounting_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_accounting_transaction_url
    assert_response :success
  end

  test "should create accounting_transaction" do
    assert_difference('Accounting::Transaction.count') do
      post accounting_transactions_url, params: { accounting_transaction: {  } }
    end

    assert_redirected_to accounting_transaction_url(Accounting::Transaction.last)
  end

  test "should show accounting_transaction" do
    get accounting_transaction_url(@accounting_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounting_transaction_url(@accounting_transaction)
    assert_response :success
  end

  test "should update accounting_transaction" do
    patch accounting_transaction_url(@accounting_transaction), params: { accounting_transaction: {  } }
    assert_redirected_to accounting_transaction_url(@accounting_transaction)
  end

  test "should destroy accounting_transaction" do
    assert_difference('Accounting::Transaction.count', -1) do
      delete accounting_transaction_url(@accounting_transaction)
    end

    assert_redirected_to accounting_transactions_url
  end
end

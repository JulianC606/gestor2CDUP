require "application_system_test_case"

class Accounting::AccountsTest < ApplicationSystemTestCase
  setup do
    @accounting_account = accounting_accounts(:one)
  end

  test "visiting the index" do
    visit accounting_accounts_url
    assert_selector "h1", text: "Accounting/Accounts"
  end

  test "creating a Account" do
    visit accounting_accounts_url
    click_on "New Accounting/Account"

    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "updating a Account" do
    visit accounting_accounts_url
    click_on "Edit", match: :first

    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "destroying a Account" do
    visit accounting_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account was successfully destroyed"
  end
end

require "application_system_test_case"

class Accounting::EntriesTest < ApplicationSystemTestCase
  setup do
    @accounting_entry = accounting_entries(:one)
  end

  test "visiting the index" do
    visit accounting_entries_url
    assert_selector "h1", text: "Accounting/Entries"
  end

  test "creating a Entry" do
    visit accounting_entries_url
    click_on "New Accounting/Entry"

    fill_in "Date", with: @accounting_entry.date
    fill_in "Transaction", with: @accounting_entry.transaction_id
    click_on "Create Entry"

    assert_text "Entry was successfully created"
    click_on "Back"
  end

  test "updating a Entry" do
    visit accounting_entries_url
    click_on "Edit", match: :first

    fill_in "Date", with: @accounting_entry.date
    fill_in "Transaction", with: @accounting_entry.transaction_id
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry" do
    visit accounting_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry was successfully destroyed"
  end
end

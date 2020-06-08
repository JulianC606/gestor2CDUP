require "application_system_test_case"

class Accounting::EntryLinesTest < ApplicationSystemTestCase
  setup do
    @accounting_entry_line = accounting_entry_lines(:one)
  end

  test "visiting the index" do
    visit accounting_entry_lines_url
    assert_selector "h1", text: "Accounting/Entry Lines"
  end

  test "creating a Entry line" do
    visit accounting_entry_lines_url
    click_on "New Accounting/Entry Line"

    fill_in "Account number", with: @accounting_entry_line.account_number
    fill_in "Credit", with: @accounting_entry_line.credit
    fill_in "Debit", with: @accounting_entry_line.debit
    click_on "Create Entry line"

    assert_text "Entry line was successfully created"
    click_on "Back"
  end

  test "updating a Entry line" do
    visit accounting_entry_lines_url
    click_on "Edit", match: :first

    fill_in "Account number", with: @accounting_entry_line.account_number
    fill_in "Credit", with: @accounting_entry_line.credit
    fill_in "Debit", with: @accounting_entry_line.debit
    click_on "Update Entry line"

    assert_text "Entry line was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry line" do
    visit accounting_entry_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry line was successfully destroyed"
  end
end

class CreateAccountingEntryLines < ActiveRecord::Migration[6.0]
  def change
    create_table :accounting_entry_lines do |t|
      t.string :account_number
      t.float :debit
      t.float :credit

      t.timestamps
    end
  end
end

class CreateAccountingEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :accounting_entries do |t|
      t.date :date
      t.integer :transaction_id

      t.timestamps
    end
  end
end

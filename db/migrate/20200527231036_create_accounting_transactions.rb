class CreateAccountingTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :accounting_transactions do |t|
      t.integer :event_id
      t.date :date
      t.integer :type_of_transaction
      t.integer :amount
      t.string :comments
      t.integer :account_id
      t.timestamps
    end
  end
end

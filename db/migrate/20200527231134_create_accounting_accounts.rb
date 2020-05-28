class CreateAccountingAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounting_accounts do |t|
      t.string :name
      t.string :initial_balance
      t.integer :in_charge_id

      t.timestamps
    end
  end
end

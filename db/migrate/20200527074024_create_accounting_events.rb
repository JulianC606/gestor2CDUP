class CreateAccountingEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :accounting_events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :created_by_id
      t.string :comments
      t.timestamps
    end
  end
end

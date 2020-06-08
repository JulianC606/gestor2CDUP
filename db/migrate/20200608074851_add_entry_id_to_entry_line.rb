class AddEntryIdToEntryLine < ActiveRecord::Migration[6.0]
  def change
    add_column :accounting_entry_lines, :entry_id, :integer
  end
end

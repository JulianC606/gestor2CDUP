class AddDescriptionToEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :accounting_entries, :description, :string
  end
end

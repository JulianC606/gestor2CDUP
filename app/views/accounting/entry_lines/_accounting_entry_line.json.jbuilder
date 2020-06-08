json.extract! accounting_entry_line, :id, :account_number, :debit, :credit, :created_at, :updated_at
json.url accounting_entry_line_url(accounting_entry_line, format: :json)

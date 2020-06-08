json.extract! accounting_entry, :id, :date, :transaction_id, :created_at, :updated_at
json.url accounting_entry_url(accounting_entry, format: :json)

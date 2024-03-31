json.extract! expense, :id, :section, :type, :amount, :notes, :date, :created_at, :updated_at
json.url expense_url(expense, format: :json)

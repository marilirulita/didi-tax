class DashboardController < ApplicationController
  def index
    @withheld_totals = WithheldTax.select("sum(income_withheld) as total_income, sum(iva_withheld) as total_iva, sum(isr_withheld) as total_isr")
    @income_total = Income.select("sum(amount) as total_amount")
    @expense_total = Expense.select("sum(amount) as total_amount")
  end
end

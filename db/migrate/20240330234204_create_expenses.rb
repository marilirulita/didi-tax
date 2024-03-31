class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.string :section
      t.string :expense_type
      t.integer :amount
      t.text :notes
      t.date :date

      t.timestamps
    end
  end
end

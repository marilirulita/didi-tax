class CreateIncomes < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.date :date
      t.integer :amount
      t.text :note

      t.timestamps
    end
  end
end

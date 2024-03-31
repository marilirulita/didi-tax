class CreateWithheldTaxes < ActiveRecord::Migration[7.1]
  def change
    create_table :withheld_taxes do |t|
      t.date :date
      t.integer :income_withheld
      t.integer :iva_withheld
      t.integer :isr_withheld
      t.text :note

      t.timestamps
    end
  end
end

class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :invoice_to_id
      t.integer :invoice_by_id
      t.datetime :invoice_date
      t.datetime :due_date
      t.string :invoice_no
      t.string :reference_no
      t.text :invoice_terms
      t.boolean :is_paid, default: false
      t.decimal :tax

      t.timestamps
    end
  end
end

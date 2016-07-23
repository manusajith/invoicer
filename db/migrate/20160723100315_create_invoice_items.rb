class CreateInvoiceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :invoice_items do |t|
      t.references :invoice, foreign_key: true
      t.string :description
      t.integer :unit
      t.integer :price

      t.timestamps
    end
  end
end

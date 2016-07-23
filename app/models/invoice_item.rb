# == Schema Information
#
# Table name: invoice_items
#
#  id          :integer          not null, primary key
#  invoice_id  :integer
#  description :string
#  unit        :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class InvoiceItem < ApplicationRecord
  belongs_to :invoice

  def amount
    price * unit
  end
end

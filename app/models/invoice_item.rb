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
  belongs_to :invoice, optional: true
  validates :price, presence: true
  validates :unit, presence: true
  validates :description, presence: true

  def amount
    price * unit
  end
end

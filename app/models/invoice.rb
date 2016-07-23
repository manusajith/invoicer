# == Schema Information
#
# Table name: invoices
#
#  id            :integer          not null, primary key
#  invoice_to_id :integer
#  invoice_by_id :integer
#  invoice_date  :datetime
#  due_date      :datetime
#  invoice_no    :string
#  reference_no  :string
#  invoice_terms :text
#  is_paid       :boolean
#  tax           :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Invoice < ApplicationRecord
  belongs_to :invoice_to, class_name: 'Company'
  belongs_to :invoice_by, class_name: 'Company'
  has_many :invoice_items

  def sub_total
    invoice_items.collect(&:amount)
  end

  def total
    sub_total + (sub_total * tax / 100)
  end
end
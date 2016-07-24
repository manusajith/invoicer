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
  validates :due_date, presence: true

  accepts_nested_attributes_for :invoice_items, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :invoice_to, allow_destroy: true, reject_if: :all_blank

  def sub_total
    invoice_items.collect(&:amount).sum
  end

  def total
    return sub_total if tax.nil?
    sub_total + (sub_total * tax / 100)
  end

  def pay_amount(_stripe_token)
    Stripe.api_key = invoice_by.stripe_api_key
    charge = Stripe::Charge.create(
      amount: total, # amount in cents, again
      currency: 'usd',
      source: token,
      description: 'Example charge'
    )
    update_attributes(is_paid: true)
  rescue Stripe::CardError => e
    return false
  end
end

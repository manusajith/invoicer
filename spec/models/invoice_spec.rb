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

require 'rails_helper'

RSpec.describe Invoice, type: :model do
  let(:invoice) { create :invoice }
  it { should validate_presence_of(:due_date) }
end

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

require 'rails_helper'

RSpec.describe InvoiceItem, type: :model do
  it { should validate_presence_of(:invoice_id) }
end

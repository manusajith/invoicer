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
  pending "add some examples to (or delete) #{__FILE__}"
end

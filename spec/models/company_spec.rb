# == Schema Information
#
# Table name: companies
#
#  id             :integer          not null, primary key
#  name           :string
#  stripe_api_key :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:company) { build :company }

  it { should validate_presence_of(:name) }
end

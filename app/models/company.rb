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

class Company < ApplicationRecord
  has_one :user
  validates :name, presence: true
end

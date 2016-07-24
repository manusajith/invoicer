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
  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end

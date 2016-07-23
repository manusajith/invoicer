# This will guess the User class
FactoryGirl.define do
  factory :user do
    name 'John'
    email 'test@test.com'
    password '12345678'
  end

  factory :receiver, class: User do
    name 'John'
    email 'test@test.com'
    password '12345678'
  end

  factory :company do
    name 'test company'
  end

  factory :invoice do
    invoice_to    receiver
    invoice_by    user
    invoice_date  Date.today - 1
    due_date      Date.today + 2
    invoice_no    'r3w434'
    reference_no  '122/22'
    invoice_terms 'sdfsdfsdf'
    is_paid       false
    tax           10
  end

  factory :invoice_item do
  end
end

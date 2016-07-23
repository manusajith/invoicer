# This will guess the User class
FactoryGirl.define do
  factory :user do
    name 'John'
    email 'test@test.com'
    password '12345678'
    company
  end

  factory :receiver, class: User do
    name 'John'
    email 'test@test.com'
    password '12345678'
  end

  factory :invoice_to, class: Company do
    name 'test company'
  end

  factory :invoice_by, class: Company, aliases: [:company] do
    name 'test company'
  end

  factory :invoice do
    invoice_to
    invoice_by
    invoice_date  { Date.today - 1 }
    due_date      { Date.today + 2 }
    invoice_no    'r3w434'
    reference_no  '122/22'
    invoice_terms 'sdfsdfsdf'
    is_paid       false
    tax           10
  end

  factory :invoice_item do
    invoice
    unit 2
    price 20
  end
end

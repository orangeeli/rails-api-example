FactoryGirl.define do
  factory :person do
    first_name 'Lothar'
    middle_name { Faker::Name.name }
    last_name { Faker::Name.last_name }
  end
end
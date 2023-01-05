FactoryBot.define do
  factory :entity do
    name { Faker::User.name }
    amount { Faker::Number.number(digits: 3) }
    user
  end
end

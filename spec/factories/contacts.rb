FactoryBot.define do
  factory :contact do
    full_name { Faker::Name.name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.full_address }

    trait :invalid do
      fullname nil
      email nil
      phone_number nil
      address nil
    end
  end
end

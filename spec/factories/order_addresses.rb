FactoryBot.define do
  factory :order_address do
    user_id { Faker::Number.non_zero_digit }
    item_id { Faker::Number.non_zero_digit }
    postal_code { Faker::Number.decimal_part(digits: 3) + '-' + Faker::Number.decimal_part(digits: 4) }
    region_id { Faker::Number.within(range: 2..48) }
    city { Faker::Address.city}
    street { Faker::Address.street_address }
    building_name { Faker::Address.street_address  }
    phone_number { Faker::Number.decimal_part(digits: 11) }
  end
end

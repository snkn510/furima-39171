FactoryBot.define do
  factory :item do
    title       {Faker::Lorem.sentence}
    description {Faker::Lorem.sentence}
    category_id { Faker::Number.within(range: 2..10) }
    condition_id { Faker::Number.within(range: 2..7) }
    shipping_charge_id { Faker::Number.within(range: 2..3) }
    region_id { Faker::Number.within(range: 2..48) }
    days_to_ship_id { Faker::Number.within(range: 2..4) }
    price       {Faker::Number.between(from: 300, to: 9999999)}
    association :user
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/item-sample.png'), filename: 'item-sample.png')
    end
  end
end

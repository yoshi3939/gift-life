FactoryBot.define do
  factory :gift do
    status_id { 2 }
    name { '服' }
    association :user
  end
end

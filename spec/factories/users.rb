FactoryBot.define do
  factory :user do
    session
    email_address { Faker::Internet.email }
    password { Faker::Internet.password }
    password_confirmation { password }

    trait :with_session do
      after(:create) do |user|
        create(:session, user: user)
      end
    end
  end
end

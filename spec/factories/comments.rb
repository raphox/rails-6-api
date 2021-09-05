# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    post
    body { Faker::Lorem.sentence }
  end
end

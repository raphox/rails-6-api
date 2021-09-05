# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { Faker::Movie.title }
    body { Faker::Movie.quote }
  end
end

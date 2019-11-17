# frozen_string_literal: true

FactoryBot.define do
  factory :animal do
    exemplar
    name { Faker::Name.name }
    trait :avatar do
      after :create do |animal|
        file_path = Rails.root.join('spec', 'files', 'cat.jpeg')
        file = fixture_file_upload(file_path, 'img/jpeg')
        animal.avtar.attach(file)
      end
    end
  end
end

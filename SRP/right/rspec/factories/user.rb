# frozen_string_literal: true

require 'factory_bot'
require 'faker'

FactoryBot.define do
  factory :user, class: User do
    name { Faker::Name.first_name }
    surname { Faker::Name.last_name }
    age { rand(18..50) }
    password { nil  }

    initialize_with { new(name, surname, age, password) }
  end
end


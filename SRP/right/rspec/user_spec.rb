# frozen_string_literal: true

require_relative '../user'
require_relative '../rspec/factories/user'
require_relative 'rspec_helper'

RSpec.describe User do
  describe '#to_s' do
    let(:user_one) { build(:user, password: 'secret') }

    context 'with full object' do
      it 'returns information' do
        expect(user_one.to_s).to include('Password: secret')
      end
    end

    context 'with null values' do
      it 'returns empty information' do
        user_one.name = nil
        user_one.surname = nil
        user_one.age = nil
        user_one.password = nil

        expect(user_one.to_s).to include('Password: ')
      end
    end
  end
end


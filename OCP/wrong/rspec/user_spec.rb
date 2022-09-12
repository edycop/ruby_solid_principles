# frozen_string_literal: true

require_relative '../user'
require_relative '../rspec/factories/user'
require_relative '../admin_config_file'
require_relative 'rspec_helper'

RSpec.describe User do
  let(:user_one) { build(:user, password: 'secret') }

  describe '#to_s' do
    context 'with full object' do
      it 'returns information' do
        expect(user_one.to_s).to include('Auth level: GUEST')
      end
    end

    context 'with null values' do
      it 'returns empty information' do
        user_one.name = nil
        user_one.surname = nil
        user_one.age = nil
        user_one.password = nil
        user_one.authorization_level = nil

        expect(user_one.to_s).to include('Auth level: ')
      end
    end
  end

  describe '#read_file_content' do
    it 'returns a message when guest user' do
      expect(user_one.read_file_content(AdminConfigFile.new('file.txt', 'secret'))).to include('Permission denied.')
    end
  end
end


# frozen_string_literal: true

require_relative '../user'
require_relative '../rspec/factories/user'

# This configuration avoid to write FactoryBot on each call to 'build'
# or 'create' methods.
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end

RSpec.describe User do
  describe '#print_info' do
    let(:user_one) { build(:user, password: 'secret') }

    context 'with has the correct info' do
      it 'returns information' do
        expect(user_one.print_info).to include('Password: secret')
      end
    end

    context 'with null values' do
      it 'returns empty information' do
        user_one.name = nil
        user_one.surname = nil
        user_one.age = nil
        user_one.password = nil

        expect(user_one.print_info).to include('Password: ')
      end
    end
  end

  describe '#encrypt_password' do
    let(:user_two) { build(:user, password: 'I_am_a_great_hacker') }

    context 'with a string password' do
      it 'returns the encrypted one' do
        expect(user_two.encrypt_password).to eq('I19_19a19m19_19a19_19g19r19e19a19t19_19h19a19c19k19e19r19')
      end
    end

    context 'with empty password' do
      it 'returns an empty string' do
        user_two.password = ''
        expect(user_two.encrypt_password).to eq('')
      end
    end

    context 'with null password' do
      it 'returns a nil' do
        user_two.password = nil
        expect(user_two.encrypt_password).to eq(nil)
      end
    end
  end
end


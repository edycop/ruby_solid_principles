# frozen_string_literal: true

require_relative '../string_encrypter'
require_relative 'rspec_helper'

RSpec.describe StringEncrypter do
  describe '#encrypt_string' do
    let(:object) { Class.new { extend StringEncrypter } }

    it 'returns valid encrypted when valid input' do
      expect(object.encrypt_string('test')).to eq('t4e4s4t4')
    end

    it 'returns nil when invalid input' do
      expect(object.encrypt_string(nil)).to eq(nil)
    end
  end
end


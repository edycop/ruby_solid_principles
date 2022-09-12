# frozen_string_literal: true

require 'factory_bot'

# This configuration avoid to write FactoryBot on each call to 'build'
# or 'create' methods.
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end


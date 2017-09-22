require 'capybara/rspec'
require_relative '../capybara_walkthrough'

RSpec.configure do |config|
  config.formatter = :documentation
end

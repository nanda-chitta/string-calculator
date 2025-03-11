# frozen_string_literal: true

require 'string_calculator'

RSpec.configure do |_config|
  include StringCalculator
end

RSpec::Expectations.configuration.on_potential_false_positives = :nothing

# frozen_string_literal: true

RSpec.describe StringCalculator, type: :module do
  describe 'string_calculator' do
    it 'return should defined as "constant"' do
      expect(defined?(StringCalculator)).to eq('constant')
    end
  end
end
